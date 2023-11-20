#!/bin/bash

# Laravelアプリケーションのディレクトリに移動
cd /var/www/html/test

# Composerを使用して依存関係をインストール
composer install --no-interaction --prefer-dist --optimize-autoloader

# マイグレーション
php artisan migrate --force

# キャッシュのクリア
php artisan cache:clear