# Betken POS

Betken POS is a Vanilla PHP 8 and MySQL point-of-sale and order-management system for casino service operations.

## Main Features

- Role-based authentication and personal PIN verification
- Shared Service Terminal workflow
- Customer, staff, inspector, gaming and restaurant orders
- Manager authorization and automatic Bar/Kitchen printing
- Product, recipe, prepared-item and non-stock item handling
- Decimal inventory quantities and Store Management synchronization
- Usage, closing-stock and stock-movement reports
- High-contrast touchscreen interface

## Local Setup

See [INSTALL.md](INSTALL.md).

Machine-specific credentials and the Store synchronization token belong in `config/local.php`. Create it from `config/local.example.php`; the local file is intentionally excluded from Git.
