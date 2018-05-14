
require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

 
  	test "home links valid" do
  		sign_in users(:one)
  		get root_url
    	assert_select "a[href=?]", users_club_path
    	assert_select "a[href=?]", edit_user_registration_path
    	assert_select "a[href=?]", destroy_user_session_path
    end

	test "home links invalid" do
    	get root_url
    	assert_select "a[href=?]", new_user_registration_path
    	assert_select "a[href=?]", new_user_session_path
    end



	test "invalid signup information" do
    	get new_user_registration_path
    	assert_no_difference 'User.count' do
    		post user_registration_path, params: { user: { name:  " ",
    									 prenom: "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar",
                                         commit: " " 
                                         } }
    	end
    	get root_url
    	assert_select 'div.error_explanation'
    	assert_select 'div.field_with_errors'
  	end
end
