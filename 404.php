<?php
$dashboardUrl = function_exists('base_url') ? base_url('dashboard') : 'index.php';
$cssUrl = function_exists('base_url') ? base_url('public/assets/css/pos.css') : 'public/assets/css/pos.css';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>404 Not Found - Betken POS</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= $cssUrl ?>" rel="stylesheet">
</head>
<body class="no-sidebar d-flex align-items-center justify-content-center min-vh-100 bg-dark text-light">
  <div class="text-center p-4">
    <h1 class="display-3 fw-bold text-warning">404</h1>
    <p class="fs-5 text-secondary">The page you're looking for was not found.</p>
    <a href="<?= $dashboardUrl ?>" class="btn btn-warning mt-3">Return to Dashboard</a>
  </div>
</body>
</html>
