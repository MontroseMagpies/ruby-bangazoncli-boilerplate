require 'sqlite3'

class Customer

  def initialize(name_first, name_last, address_street, address_email, city, state, zip_code, active)
    @name_first = name_first
    @name_last = name_last
    @address_street = address_street
    @address_email = address_email
    @city = city
    @state = state
    @zip_code = zip_code
    @active = active
  end

  # create customer sql
  def create
    db = SQLite3::Database.new('../../db/bangazon_sqlite.sqlite3')

    db.execute("INSERT INTO customers (name_first, name_last, address_street, address_email, city, state, zip_code, active) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [@name_first, @name_last, @address_street, @address_email, @city, @state, @zip_code, @active])
    db.last_insert_row_id
  end




  # query all customers

  # query single customers

  # update customer


end
