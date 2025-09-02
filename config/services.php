<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
	
	'fcm_xo_delivery' => [
        'credentialsPath' => storage_path('app/xo-delivery-firebase-adminsdk.json') ,
        'project_id' => env('XO_DELIVERY_PROJECT_ID'),

    ],
	
	'fcm_xo_app' => [
        'credentialsPath' => storage_path('app/xo-project-firebase-adminsdk.json') ,
        'project_id' => env('XO_APP_PROJECT_ID'),

    ],
	
	'fcm_xo_dashboard' => [
		//'credentialsPath' => storage_path('app/dashboard-xo.json') ,
		//'project_id' => env('XO_DASHBOARD_PROJECT_ID'),
		'credentialsPath' => storage_path('app/dashboard.json') ,
		'project_id' => env('XO_DASHBOARD_PROJECT_ID'),

	],
	
	

];
