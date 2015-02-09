require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  #run tests by using the command "bundle exec rake test"
  #the assert_select method searches for an HTML tag (selector) of a given type eg "title"
  #the test command "get :home (etc)" tests that the HTTP request "GET" results in a valid response and confirms this by the...
  #assert_response assertion
  
  #test "should get home" do
   # get :home
  #  assert_response :success
  #  assert_select "title", "Home | ROR Sample App"
 # end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | ROR Sample App"
    end

test "should get about" do
  get :about
  assert_response :success
  assert_select "title", "About | ROR Sample App"
end

test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | ROR Sample App"
  end


end
