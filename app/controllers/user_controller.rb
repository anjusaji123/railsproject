class UserController < ApplicationController
skip_before_action :verify_authenticity_token


  def signup
    name= params["name"]
    email= params["email"]
    pwd=params["psw"]
    pno= params["phonenumber"]
    if User.find_by_email(email)
      render json: {
            status: 403,
            response: "User already exists"
          }.to_json
    else
    User.create(:name => name , :email => email,:password => pwd, :phonenumber =>pno)

    render json: {
          status: 200,
          response: "Data saved successfully"
        }.to_json
    end        # api_response = { "status" =>" saved successfully"}
    # # render json: api_response.to_json
end


def login
    email= params["email"]
     pwd=params["psw"]
     if User.find_by_email(email)
       if pwd == User.find_by_email(email).password
         render json: {
               status: 200,
               response: "successfully logined"
             }.to_json

       else
         render json: {
               status: 200,
               response: "failed"
             }.to_json

       end

    else
      render json: {
            status: 200,
            response: "user does not exist"
          }.to_json
  end
end


end
