require 'sqlite3'

class Schema

  def self.create
  #self; the this of class

    db = SQLite3::Database.open('bangazon_sqlite.sqlite3')

    db.execute "CREATE TABLE if not exists `customers` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `name_first`	text NOT NULL,
      `name_last`	text NOT NULL,
      `address_street` text NOT NULL,
      `address_email`	text NOT NULL,
      `city` text NOT NULL,
      `state`	text NOT NULL,
      `zip_code`	text NOT NULL,
      `active`	text NOT NULL
    );"

    db.execute "CREATE TABLE `orders` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `payment_type_id`	integer NOT NULL,
      `customer_id`	integer NOT NULL
    );"

    db.execute "CREATE TABLE `payment_types` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `payment_type`	text NOT NULL,
      `account_number`	integer NOT NULL,
      `customer_id`	integer NOT NULL
    );"

    db.execute "CREATE TABLE `product_orders` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `product_id`	integer NOT NULL,
      `order_id`	integer NOT NULL
    );"

    db.execute "CREATE TABLE `product_types` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `product_type`	text NOT NULL
    );"

    db.execute "CREATE TABLE `products` (
      `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      `product_price`	float NOT NULL,
      `product_description`	text NOT NULL,
      `customer_id`	integer NOT NULL,
      `product_type_id`	integer NOT NULL
    );"

  end
end

Schema.create
