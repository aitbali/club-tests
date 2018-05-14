require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  
  test "should not save user without name" do
  user = User.new(prenom:"prenom",email:"sdqs@fsf.com")
  assert_not user.save
  end

  test "should not save user without prenom" do
  user = User.new(name:"nom",email:"sdqs@fsf.com")
  assert_not user.save
  end

  test "should not save user without email" do
  user = User.new(name:"nom",prenom:"prenom")
  assert_not user.save
  end


end
