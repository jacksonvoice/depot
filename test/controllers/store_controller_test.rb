require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end


  test "should show store index page layout" do 
  	get :index
  	assert_select 'tr.store-index-list', minimum: 3
  	assert_select 'h3', 'Programing Ruby 1.9'
  	assert_select '.price', /\$[,\d]+\.\d\d/
  end



end
