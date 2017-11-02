require 'minitest/autorun'
require '../../app/controllers/customers_controller.rb'

class CustomersControllerTest < MiniTest::Test

  def setup
    @new_customer = CustomersController.new
    @new_customer.name = 'name_first'
    @new_customer.

    id, name_first, name_last, adress_street, address_email, city, state, zip_code, active)
  end

  #checking if create method in controller is going to return
  def test_create_customer
    @new_customer.create
    assert_instance_of @new.customer.customer_name

  end

    assert_raises ArgumentError do
      Customer.new('arg1')
    end

    @cc = Customer.new('arg1')

  end


  # call method

  # get data store in variable
  # method to print name


  # TEST get active customers

  # TEST GET all customer

  # TEST GET single customer

  # TEST create customer

  # TEST update customer

end

test create cust/


