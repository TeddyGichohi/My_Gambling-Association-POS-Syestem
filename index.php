<?php
declare(strict_types=1);

if (php_sapi_name() === 'cli-server') {
    $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    $filePath = __DIR__ . $uri;
    if ($uri !== '/' && file_exists($filePath) && !is_dir($filePath)) {
        return false;
    }
}

session_start();

require __DIR__ . '/config/db.php';
require __DIR__ . '/config/store_db.php';
require __DIR__ . '/app/Core/helpers.php';
require __DIR__ . '/app/Services/PrinterService.php';
require __DIR__ . '/app/Services/StoreSyncService.php';
require __DIR__ . '/app/Controllers/AuthController.php';
require __DIR__ . '/app/Controllers/DashboardController.php';
require __DIR__ . '/app/Controllers/OrderController.php';
require __DIR__ . '/app/Controllers/AdminController.php';
require __DIR__ . '/app/Controllers/InventoryController.php';
require __DIR__ . '/app/Controllers/StoreController.php';
require __DIR__ . '/app/Controllers/ReportController.php';

$path = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');
$scriptName = str_replace('\\', '/', $_SERVER['SCRIPT_NAME'] ?? '');
if (str_ends_with($scriptName, '.php') && basename($scriptName) === 'index.php') {
    $scriptDir = trim(dirname($scriptName), '/.');
    if ($scriptDir !== '' && str_starts_with($path, $scriptDir)) {
        $path = trim(substr($path, strlen($scriptDir)), '/');
    }
}
$path = $path ?: 'dashboard';


$auth = new AuthController($pdo);
$dashboard = new DashboardController($pdo);
$orders = new OrderController($pdo);
$admin = new AdminController($pdo);
$inventory = new InventoryController($pdo);
$store = new StoreController($pdo, $storePdo);
$reports = new ReportController($pdo);

try {
    match (true) {
        $path === 'login' => $auth->login(),
        $path === 'logout' => $auth->logout(),
        $path === 'dashboard' => $dashboard->index(),
        $path === 'api/realtime/dashboard' => $dashboard->liveStats(),
        $path === 'api/realtime/pending' => $orders->livePending(),
        $path === 'api/realtime/live-orders' => $orders->liveOrdersApi(),
        $path === 'api/realtime/stock-check' => $orders->liveStockCheck(),
        preg_match('#^api/realtime/orders/(\d+)$#', $path, $m) === 1 => $orders->liveOrderStatus((int)$m[1]),
        $path === 'orders' => $orders->index(),
        $path === 'orders/new' => $orders->create(),
        $path === 'orders/store' => $orders->store(),
        $path === 'orders/verify-pin' => $orders->verifyPin(),
        $path === 'orders/source-options' => $orders->sourceOptions(),
        $path === 'orders/products' => $orders->products(),
        preg_match('#^orders/(\d+)/ready$#', $path, $m) === 1 => $orders->markReady((int)$m[1]),
        preg_match('#^orders/(\d+)/serve$#', $path, $m) === 1 => $orders->markServed((int)$m[1]),
        preg_match('#^orders/(\d+)$#', $path, $m) === 1 => $orders->show((int)$m[1]),
        preg_match('#^orders/(\d+)/reprint/(bar|kitchen)$#', $path, $m) === 1 => $orders->reprint((int)$m[1], $m[2]),
        $path === 'authorize' => $orders->authorizeList(),
        $path === 'authorize/bulk' => $orders->authorizeBulk(),
        preg_match('#^authorize/(\d+)/(approve|reject)$#', $path, $m) === 1 => $orders->authorize((int)$m[1], $m[2]),
        $path === 'inventory' => $inventory->index(),
        $path === 'inventory/recipes' => $inventory->recipes(),
        $path === 'inventory/preparation' => $inventory->preparation(),
        $path === 'inventory/set-stock' => $inventory->setStock(),
        $path === 'inventory/transact' => $inventory->transact(),
        $path === 'api/realtime/store' => $store->realtimeStatus(),
        $path === 'store' => $store->index(),
        $path === 'store/sync' => $store->sync(),
        $path === 'store/sync-catalog' => $store->syncCatalog(),
        preg_match('#^store/(\d+)/sync$#', $path, $m) === 1 => $store->syncRequisition((int)$m[1]),
        $path === 'reports' => $reports->index(),
        $path === 'reports/export/pdf' => $reports->export('pdf'),
        $path === 'reports/export/excel' => $reports->export('excel'),
        $path === 'admin' => $admin->index(),
        $path === 'admin/users' => $admin->users(),
        $path === 'admin/categories' => $admin->categories(),
        $path === 'admin/groups' => $admin->groups(),
        $path === 'admin/selling-units' => $admin->sellingUnits(),
        $path === 'admin/stock-units' => $admin->stockUnits(),
        $path === 'admin/products' => $admin->products(),
        preg_match('#^admin/products/(\d+)/edit$#', $path, $m) === 1 => $admin->editProduct((int)$m[1]),
        $path === 'admin/sources' => $admin->sources(),
        $path === 'admin/printers' => $admin->printers(),
        $path === 'admin/printers/assign' => $admin->assignPrinter(),
        preg_match('#^admin/printers/(\d+)/test$#', $path, $m) === 1 => $admin->testPrinter((int)$m[1]),
        preg_match('#^admin/printers/(\d+)/remove$#', $path, $m) === 1 => $admin->removePrinter((int)$m[1]),
        default => require __DIR__ . '/404.php',
    };
} catch (Throwable $e) {
    http_response_code(500);
    echo '<h1>Application error</h1><p>' . e($e->getMessage()) . '</p>';
}
