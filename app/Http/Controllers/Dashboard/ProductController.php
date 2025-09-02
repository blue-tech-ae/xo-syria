<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Support\Str;
use App\Exports\ProductsExport;
use App\Http\Controllers\Controller;
use App\Imports\ProductsImport;
use App\Models\Group;
use App\Models\Product;
use App\Models\Photo;
use App\Http\Requests\Product\StoreProductPhotosRequest;
use App\Services\FavouriteService;
use App\Services\ProductService;
use App\Services\ProductVariationService;
use Exception;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use InvalidArgumentException;
use Maatwebsite\Excel\Facades\Excel;
use Symfony\Component\HttpFoundation\Response;
use App\Enums\Roles;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{

    public function __construct(
        protected ProductService $productService,
        protected ProductVariationService $productVariationService,
        protected FavouriteService $favouriteService
    ) {}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $filter = request('filter_data');
        $search = $request->input('search');
        // $filter = $request->only(['currency', 'price_min', 'lang', 'price_max', "color", "size", "sort"]);
        // $filter_data = [
        //     'range_price' => array_key_exists('range_price', $filter) ? $filter['range_price'] : null,
        //     'color' => array_key_exists('color', $filter) ? $filter['color'] : null,
        //     'size' => array_key_exists('size', $filter) ? $filter['size'] : null,
        //     'sort' => array_key_exists('sort', $filter) ? $filter['sort'] : null,
        // ];

        $products = $this->productService->getAllProductsAdmin($filter, $search);

        return response()->success([
            'products' => $products
        ], Response::HTTP_OK);
    }

    public function attach(Request $request) //si
    {
        // return Group::where('id',request('group_id'))->first();
        $validate = Validator::make(
            $request->all(),
            [
                'product_variation_ids' => 'required_without:product_id|array|exists:product_variations,id',
                'product_id' => 'required_without:product_variation_ids|exists:products,id',
                //'group_id' => 'required|exists:groups,id'
                'group_id' => 'nullable|exists:groups,id'//null if we want to delete product from group
            ]
        );
        if ($validate->fails()) {
            return response()->error(
                $validate->errors(),
                422
            );
        }
        $validated_data = $validate->validated();

        try {

            $product_id = $validated_data['product_id'] ?? null;
            $product_variation_ids = $validated_data['product_variation_ids'] ?? null;
            $group_id = $validated_data['group_id'];
            if (isset($product_id)) {
                $process = $this->productService->attachProductToGroup($product_id, $group_id);
            } elseif (isset($product_variation_ids)) {
                $process = $this->productService->attachProductVariationToGroup($product_variation_ids, $group_id);
            }
            return response()->success(
                "Product is Added to group",
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function showReviews(Request $request)
    {
        try {
            $product_id = request('product_id');
            $filter_data = $request->only(['date_min', 'date_max', 'rating', 'content']);
            $product = $this->productService->getReviews($product_id, $filter_data);

            return response()->success(
                $product,
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }



    public function showConuts(Request $request)
    {
        try {
            $product_id = request('product_id');
            $product = $this->productService->showCounts();

            return response()->success(
                $product,
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function showOrders(Request $request) //si
    {
        try {
            $product_id = request('product_id');
            $filter_data = $request->only(['date_min', 'date_max', 'quantity', 'status', 'total_min', 'total_max']);
            // sort key : total_quantity,
            $sort_data = $request->only(['sort_key', 'sort_value']);
            $product = $this->productService->getOrders($product_id, $filter_data, $sort_data);

            return response()->success(
                $product,
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function showStocks(Request $request) //si
    {
        try {
            $product_id = request('product_id');
            $inventory_id = request('inventory_id');
            $filter_data = $request->only(['status']);
            $product = $this->productService->getStocks($product_id, $inventory_id, $filter_data);

            return response()->success(
                $product,
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function changeVisibility() //si
    {
        try {

            $product_id = request('product_id');
            $visible = request('visible');
            $process = $this->productService->changeVisibility($product_id, $visible);

            return response()->success(
                "Visibility on store is updated",
                Response::HTTP_OK
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function getFlashSales()
    {
        try {
            $favorite_products = $this->productService->getAllFlashSalesProducts();

            return response()->success(
                [
                    'products' => $favorite_products,
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                'can not find product',
                Response::HTTP_NOT_FOUND,

            );
        }
    }

    public function getFavourite() //si
    {
        try {
            // $user_id = Auth::id();
            $user = auth('sanctum')->user();
            // $user_id  = $user->id;
            $favorite_products = $this->productService->getAllFavouriteProducts($user->id);

            return response()->success(
                [
                    'products' => $favorite_products,
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                'can not find product',
                Response::HTTP_NOT_FOUND,

            );
        }
    }

    public function export()
    {
        /*return Product::select("id", "name", "description")
        ->with(['product_variations' => function ($query) {
            $query->select('id');
        }])->get();*/
        return Excel::download(new ProductsExport, 'products.xlsx');
    }

    public function import(Request $request)
    {/*
        try {
            return response()->json([
                "dasa"
            ]);

            $file = $request->file('file');
            Excel::import(new ProductsImport(), $request->file('products'));
        } catch (\Throwable $th) {
            return response()->error($th->getMessage(), 500);
        }
        return Product::select("id", "name", "description")
        ->with(['product_variations' => function ($query) {
            $query->select('id');
        }])->get();
    return Excel::download($excel, $fileName)->header('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		
		   if ($response instanceof Response) {
            // Set the Content-Type header for.xlsx files
            $response->header('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        }

        return $response;*/
    }

    public function searchProduct()
    {
        try {
            $search_data = [
                'search' => request('search') != null ? request('search') : null,
            ];

            $result_products = $this->productService->searchProduct($search_data);

            return response()->success(
                [
                    'products' => $result_products,
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                'can not find product',
                Response::HTTP_NOT_FOUND,

            );
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
    }

    /**
     *
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) //si
    {
        try {
            $validated = Validator::make(
                $request->all(),
                [
                    // category id
                    'sub_category_id' => 'required|exists:sub_categories,id',
                    // product item number
                    'product_item_no' => 'required|max:255',
                    // product info ar,
                    'product_name_ar' => 'required|max:255',
                    'product_description_ar' => 'required|max:255',
                    'product_material_ar' => 'required|max:255',
                    'product_composition_ar' => 'required|max:255',
                    'product_care_instructions_ar' => 'required|max:255',
                    'product_fit_ar' => 'required|max:255',
                    'product_style_ar' => 'required|max:255',
                    'product_season_ar' => 'required|max:255',
                    // product info en
                    'product_name_en' => 'required|max:255',
                    'product_description_en' => 'required|max:255',
                    'product_material_en' => 'required|max:255',
                    'product_composition_en' => 'required|max:255',
                    'product_care_instructions_en' => 'required|max:255',
                    'product_fit_en' => 'required|max:255',
                    'product_style_en' => 'required|max:255',
                    'product_season_en' => 'required|max:255',
                    // pricing
                    "pricing" => 'required|array',
                    "pricing.*.price_value" => 'required|numeric|between:1,9999999',
                    "pricing.*.price_name" => 'required|max:30',
                    "pricing.*.price_currency" => 'required|max:20',
                    "pricing.*.price_location" => 'required|max:20',
                    'variations' => 'required|array',
                    'variations.*.size_id' => 'required',
                    'variations.*.size_sku' => 'required',
                    'variations.*.color_id' => 'required',
                    'variations.*.color_sku' => 'required',
                ]
            );


            if ($validated->fails()) {
                return response()->error(
                    $validated->errors(),
                    422
                );
            }

            $validated_data = $validated->validated();

            $product_data = collect($validated_data)->filter(function ($value, $key) {
                return Str::startsWith($key, 'product_');
            });

            $product = $this->productService->create($product_data, $validated_data['sub_category_id']);

            $pricing_data = collect($validated_data)->filter(function ($value, $key) {
                return Str::startsWith($key, 'pricing');
            });

            $pricings[] = $this->productService->createPrice($pricing_data['pricing'], $product->id);

            $variations_data = collect($validated_data)->filter(function ($value, $key) {
                return Str::startsWith($key, 'variations');
            });

            $product_variations[] = $this->productService->createProductVariation($product->id, $product->item_no, $variations_data['variations']);

            return response()->success(
                ["product" => $product, "product_variations" => $product_variations],
                Response::HTTP_CREATED
            );
        } catch (\Throwable $th) {
            return response()->json(
                [
                    'error' => $th->getMessage(),
                ]
            );
        }
    }

    public function deletePhotos(Request $request)//si
    {
        try {
            $validated = Validator::make(
                $request->all(),
                [
                    'photo_id' => 'required|exists:photos,id',
                ]
            );

            if ($validated->fails()) {
                return response()->error(
                    $validated->errors(),
                    422
                );
            }

            $validated_data = $validated->validated();
            $photo = Photo::findOrFail($validated_data['photo_id']);
            $num = Photo::where([['product_id', $photo->product_id], ['color_id', $photo->color_id]])->count();
            $photo->forceDelete();

            if ($num == 1) {
                Photo::create([
                    'product_id' => $photo->product_id,
                    'color_id' => $photo->color_id,
                    'thumbnail' => "https://api.xo-textile.sy/public/images/xo-logo.webp",
                    'path' => "https://api.xo-textile.sy/public/images/xo-logo.webp",
                    'main_photo' => 1,
                ]);
            }

            return response()->success(
                ["messages" => "the photos has been deleted successfuly"],
                Response::HTTP_CREATED
            );
        } catch (\Throwable $th) {
            return response()->error(

                $th->getMessage(),
                Response::HTTP_BAD_REQUEST
            );
        }
    }

    public function storePhotos(StoreProductPhotosRequest $request)//si
    {
        try {
            $validated_data = $request->validated();
            $color_id = $validated_data['photos'][0]['color_id'];
            $product_id = $validated_data['product_id'];
            $photos = $this->productService->storePhotos($validated_data['product_id'], $validated_data['photos']);
            
            if (empty($photos)) {
                return response()->success(["messages" => "the photos has been added successfuly", "data" =>
                Photo::where([['color_id', $color_id], ['product_id', $product_id]])->get()], 200);
            } else {
                return response()->error(['message' => $photos, "data" =>
                Photo::where([['color_id', $color_id], ['product_id', $product_id]])->get()], 400);
            }

            return response()->success(
                ["messages" => "the photos has been added successfuly"],
                Response::HTTP_CREATED
            );
        } catch (\Throwable $th) {
            return response()->error(

                $th->getMessage(),
                Response::HTTP_BAD_REQUEST

            );
        }
    }

    public function updateMainPhoto(Request $request)
    {
        try {
            $validated = Validator::make(
                $request->all(),
                [
                    // product id
                    'product_id' => 'required|exists:products,id',
                    // photos
                    'photo_id' => 'required|exists:photos,id',
                    'color_id' => 'required|exists:colors,id',
                ]
            );
            if ($validated->fails()) {
                return response()->error(
                    $validated->errors(),
                    422
                );
            }
            $validated_data = $validated->validated();
            $photos = Photo::where([['product_id', $validated_data['product_id']], ['color_id', $validated_data['color_id']]])->get();
            foreach ($photos as $photo) {
                $photo->update(['main_photo' => 0]);
            }

            $new_main = Photo::where([['product_id', $validated_data['product_id']], ['color_id', $validated_data['color_id']], ['id', $validated_data['photo_id']]])->first();

            if ($new_main) {
                $new_main->update(['main_photo' => 1]);
            }
            //$this->productService->updatePhotos($validated_data['product_id'], $validated_data['photos']);
            return response()->success(
                ["messages" => "the main photo has been updated successfuly"],
                Response::HTTP_CREATED
            );
        } catch (\Throwable $th) {
            return response()->error(

                $th->getMessage(),
                Response::HTTP_BAD_REQUEST

            );
        }
    }

    public function updatePhotos(Request $request)//si
    {
        try {
            $validated = Validator::make(
                $request->all(),
                [
                    'product_id' => 'required|exists:products,id',
                    'photos' => 'required|array',
                    'photos.*.color_id' => 'required',
                    'photos.*.main_photo' => 'required',
                    'photos.*.image' => 'image|max:512|mimes:jpg,jpeg,bmp,png,webp,svg,dng|dimensions:min_width=600,min_height=600',
                ]
            );
           
            if ($validated->fails()) {
                return response()->error(
                    $validated->errors(),
                    422
                );
            }

            $validated_data = $validated->validated();
            $this->productService->updatePhotos($validated_data['product_id'], $validated_data['photos']);
            return response()->success(
                ["messages" => "the photos has been updated successfuly"],
                Response::HTTP_CREATED
            );
        } catch (\Throwable $th) {
            return response()->error(

                $th->getMessage(),
                Response::HTTP_BAD_REQUEST

            );
        }
    }
    public function checkItemoNo(Request $request) //si
    {
        try {
            $validated = Validator::make(
                $request->all(),
                [
                    // category id
                    'item_no' => 'required|unique:products|digits:6',
                ]
            );


            if ($validated->fails()) {
                return response()->json($validated->errors(), 422);
            }
            return response()->success(
                true,
                Response::HTTP_CREATED
            );
        } catch (Exception $th) {
            return response()->error(
                $th->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show() //si
    {
        try {
            $product_id = request('product_id');
            $product = $this->productService->showDashboard($product_id);

            return response()->success(
                $product,
                Response::HTTP_CREATED
            );
        } catch (Exception $th) {
            return response()->error(
                $th->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    public function info() //si
    {
        try {
            $product_id = request('product_id');
            $product = $this->productService->show($product_id);

            return response()->success(
                $product,
                Response::HTTP_OK
            );
        } catch (Exception $th) {
            return response()->error(
                $th->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function showCounts()
    {
        try {
            $inventory_id = request('inventory_id');
            $product_id = request('product_id');
            $date = request('date');
            $product = $this->productService->showCounts($inventory_id, $product_id, $date);

            return response()->success(
                $product,
                Response::HTTP_CREATED
            );
        } catch (Exception $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_NOT_FOUND,
            );
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request) //si
    {
        try {
            $product_id = request('product_Id');
            $validate = Validator::make(
                $request->all(),
                [
                    'product_Id' => 'required|int|exists:products,id',
                    'product_name_ar' => 'sometimes|max:255',
                    'product_name_en' => 'sometimes|max:255',
                    'product_description_ar' => 'sometimes|max:255',
                    'product_description_en' => 'sometimes|max:255',
                    'product_material_ar' => 'sometimes|max:255',
                    'product_material_en' => 'sometimes|max:255',
                    'product_composition_ar' => 'sometimes|max:255',
                    'product_composition_en' => 'sometimes|max:255',
                    'product_care_instructions_ar' => 'sometimes|max:255',
                    'product_care_instructions_en' => 'sometimes|max:255',
                    'product_fit_ar' => 'sometimes|max:255',
                    'product_fit_en' => 'sometimes|max:255',
                    'product_style_ar' => 'sometimes|max:255',
                    'product_style_en' => 'sometimes|max:255',
                    'product_season_ar' => 'sometimes|max:255',
                    'product_season_en' => 'sometimes|max:255',
                    'pricing' => 'sometimes|array',
                    'pricing.*.price_value' => 'sometimes|numeric|between:1,9999999',
                    'pricing.*.price_name' => 'sometimes|max:30',
                    'pricing.*.price_currency' => 'sometimes|max:20',
                    'pricing.*.price_location' => 'sometimes|max:20',
                    'new_colors' => 'sometimes|array',
                    'new_colors.*.name' => 'sometimes|max:100',
                    'new_colors.*.hex_code' => 'sometimes|max:100',
                    'new_colors.*.sku_code' => 'sometimes|max:100',
                    'variations' => 'required|array',
                    'variations.*.size_id' => 'required',
                    'variations.*.size_sku' => 'required',
                    'variations.*.color_id' => 'required',
                    'variations.*.color_sku' => 'required',
                ]
            );

            if ($validate->fails()) {
                return response()->error(
                    $validate->errors(),
                    Response::HTTP_UNPROCESSABLE_ENTITY
                );
            }

            $validated_data = $validate->validated();
            $product_data = $validated_data;
            $product = $this->productService->update($product_data, $product_id);
            $pricing_data =  $product_data['pricing'][0]['price_value'];
            $product_pricing = $product->pricing;
            
            $this->productService->updatePricing($product_pricing, $pricing_data);
            
            $variations_data = collect($validated_data)->filter(function ($value, $key) {
                return Str::startsWith($key, 'variations');
            });

            $product_variations[] = $this->productService->createProductVariation($product->id, $product->item_no, $variations_data['variations']);

            return response()->success(
                [
                    'product' => $product
                ],
                Response::HTTP_OK
            );
        } catch (\Throwable $th) {
            return response()->error(
                $th->getMessage(),
                Response::HTTP_OK
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy()//si
    {
        try {
            $product_id = request('product_id');
            $productservice = $this->productService->delete($product_id);

            return response()->success(
                [
                    'message' => 'Product deleted successfully'
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_OK
            );
        }
    }
    public function deleteMany()//si
    {
        try {

            $product_ids = request('product_ids');
            $productservice = $this->productService->deleteMany($product_ids);

            return response()->success(
                [
                    'message' => 'Products deleted successfully'
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_OK
            );
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function forceDelete()
    {

        try {
            $product_id = request('id');
            $productservice = $this->productService->forceDelete($product_id);

            return response()->success(
                [
                    'message' => 'Product deleted successfully'
                ],
                Response::HTTP_OK
            );
        } catch (InvalidArgumentException $e) {
            return response()->error(
                $e->getMessage(),
                Response::HTTP_OK
            );
        }
    }
}
