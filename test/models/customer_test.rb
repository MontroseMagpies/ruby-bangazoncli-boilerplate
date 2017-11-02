require 'minitest/autorun'
require_relative '../../app/models/customer.rb'


class CustomerTest < Minitest::Test


  # setup

  #test initialize that creates instance of customer
  def test_initialize
    @new_customer = Customer.new('name_first', 'name_last', 'address_street', 'address_email', 'city', 'state', 'zip_code', 'active')
    assert_instance_of Customer, @new_customer #checking type
  end

  # test create function customer sql
  def test_create_customer
    @new_customer = Customer.new('name_first', 'name_last', 'address_street', 'address_email', 'city', 'state', 'zip_code', 'active')
    customerid = @new_customer.create
    assert_operator customerid, :>, 0 #return the id of what's created as long as greater than zero
  end

  # test query all customers

  # test query single customers

  # test update customer

end
