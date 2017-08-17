# Allow an investment advisor to dreate a databse to track his clients and their holdings
# needs:
# client table - name, address, age, married Boolean, - other ideas for later risk tolerance, 
# stocks table - name, symbol, sector, capitlization 

require 'sqlite3'
require 'faker'
require_relative 'stock_data'
address_array = ['123 Main St Princeton, NJ', '1313 Mockingbird Lane Chicago, IL', '500 Union Ave. Saratoga, NY',]

db = SQLite3::Database.new("port_manager.db") 

create_table_clients = <<-SQL
	CREATE TABLE IF NOT EXISTS clients(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		address VARCHAR(255),
		age INTEGER,
		married BOOLEAN
		)
SQL

create_table_stocks = <<-SQL
	CREATE TABLE IF NOT EXISTS stocks(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		symbol VARCHAR(5),
		sector VARCHAR(255),
		capitlization VARCHAR(255),
		price INTEGER
		)
SQL

create_table_holdings = <<-SQL
	CREATE TABLE IF NOT EXISTS holdings(
		id INTEGER PRIMARY KEY,
		shares INTEGER,
		stock_id INTEGER,
		client_id INTEGER,
		FOREIGN KEY(stock_id) REFERENCES stocks(id)
		FOREIGN KEY(client_id) REFERENCES clients(id)
		)
SQL

db.execute(create_table_clients)
db.execute(create_table_stocks)
db.execute(create_table_holdings)


def create_client(db, name, address, age, married)
	db.execute("INSERT INTO clients (name, address, age, married) VALUES (?, ?, ?, ?)", [name, address, age, married])
	
end
5.times do
  create_client(db, Faker::Name.name, address_array[rand(0..2)], rand(22..80), ["true", "false"].sample )
end

def create_stocks(db, name, symbol, sector, capitlization, price)
	db.execute("INSERT INTO stocks(name, symbol, sector, capitlization, price) VALUES (?,?,?,?,?)",[name, symbol, sector, capitlization, price] )
end

STOCK_DATA.each do |name|
  create_stocks(db, name[0], name[1][0], name[1][1], name[1][2], name[1][3])
end

puts "Hello what would you like to do today?:"
puts
puts"1. View a client's portfolio
2. Upate a client's portfolio
3. Update a client's personal information
4. Quit "
user_choice = gets.chomp.to_i


