<?php

use App\Http\Controllers\Dashboard\TransactionController;
use App\Http\Controllers\Dashboard\RefundController;
use Illuminate\Support\Facades\Route;


Route::group(
    [
        'prefix' => '/dashboard/transactions',
        'as' => 'dashboard.transactions.'
    ],
    function () {
        Route::get('', [TransactionController::class, 'index']);
        Route::get('transaction-orders', [TransactionController::class, 'transactionOrders']);
        Route::get('transaction-gift-cards', [TransactionController::class, 'transactionGiftCards']);
		Route::get('transaction-refunds', [TransactionController::class, 'transacionRefunds']);

        Route::get('index', [RefundController::class, 'index']);
        Route::put('refund', [RefundController::class, 'refund']);
        Route::get('transaction-cards', [TransactionController::class, 'transactionCards']);
		Route::get('transaction-refunds-cards', [TransactionController::class, 'transactionRefundsCards']);

    }
);
