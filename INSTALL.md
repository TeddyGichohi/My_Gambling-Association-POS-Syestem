# Betken POS Installation

## Requirements

- XAMPP with Apache, PHP 8, and MySQL/MariaDB
- Project path: `D:\XAMPP\htdocs\Betken-Pos`

## Setup

1. Start Apache and MySQL in XAMPP.
2. Open phpMyAdmin at `http://localhost/phpmyadmin`.
3. Import `sql/casino_pos_schema.sql`.
4. Copy `config/local.example.php` to `config/local.php`.
5. Set the POS database, Store database, and a long random store sync token in `config/local.php`.
6. Visit `http://localhost/Betken-Pos/`.

## Default Accounts

All seeded users use password `admin123` and PIN `1234`.

- `admin` - Admin
- `manager` - Manager
- `cashier` - Cashier

## Printer Notes

The seeded Bar and Kitchen printers use `file` output and create ticket text files in `storage/prints`.

For a real ESC/POS printer, set a printer to:

- `network`: use an address like `192.168.1.50:9100`
- `windows_share`: use a share like `\\COMPUTER\PrinterName`
- `file`: use a writable local path for ticket logs

The current implementation always stores print logs in the database and writes a ticket file. The connection fields are ready for adding a direct ESC/POS transport such as a raw socket or Windows shared printer command.
