require 'rails_helper'

RSpec.describe UserController, type: :controller do

   describe "GET user#signup" do
     context " registering with valid attributes" do
      it "create new user" do
        get :create,  user: attributes_for(:user)
        expect(User.count).to eq(1)
      end
    end

    context "registering with invalid attributes" do
     it "does not create a new user"
      get :create,  user: attributes_for(:invalid_user)
      expect(User.count).to eq(0)
    end
  end
end

  # context " registering with valid attributes" do
  #   it " should save the attributes  to the database"
  #
  #   it "send welcome mail to the  new user"
  #   it "should render login page"
  # end
  #
  #   context " registering with invalid attributes" do
  #     it "should not save to the database"
  #
  # end
  #
  #  context  " sign in with valid username and password" do
  #       it "should send the response along with  the user id "
  # end

end
