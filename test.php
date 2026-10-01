<?php
declare(strict_types=1);

require_once __DIR__ . '/config/db.php';

try {
    $roles = $pdo->query("SELECT id, slug FROM roles")->fetchAll(PDO::FETCH_KEY_PAIR);
    
    $users = [
        ['admin', 'Super Administrator', 'admin123', '1234', $roles['admin'] ?? 1],
        ['manager', 'General Manager', 'admin123', '1234', $roles['manager'] ?? 2],
        ['cashier', 'Main Cashier', 'admin123', '1234', $roles['cashier'] ?? 3],
        ['waiter', 'Service Attendant', 'admin123', '1234', $roles['waiter'] ?? 4],
        ['store', 'Store Keeper', 'admin123', '1234', $roles['store_keeper'] ?? 6],
    ];

    $stmt = $pdo->prepare("INSERT INTO users (username, full_name, password_hash, pin_hash, role_id, is_active) 
                           VALUES (?, ?, ?, ?, ?, 1) 
                           ON DUPLICATE KEY UPDATE password_hash = VALUES(password_hash), pin_hash = VALUES(pin_hash)");

    foreach ($users as $user) {
        $stmt->execute([
            $user[0],
            $user[1],
            password_hash($user[2], PASSWORD_DEFAULT),
            password_hash($user[3], PASSWORD_DEFAULT),
            $user[4]
        ]);
    }

    echo "✅ Seeded POS users verified & updated successfully (admin123 / PIN 1234).\n";
} catch (PDOException $e) {
    echo "❌ Error: " . $e->getMessage() . "\n";
}

