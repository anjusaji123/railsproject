class UserController < ApplicationController
skip_before_action :verify_authenticity_token


  def signup
    name= params["name"]
    email= params["email"]
    pwd=params["psw"]
    pno= params["phonenumber"]
    puts params.inspect
    puts headers
    User.create(:name => name , :email => email,:password => pwd, :phonenumber =>pno)

    render json: {
          status: 200,
          response: "Data saved successfully"
        }.to_json
            # api_response = { "status" =>" saved successfully"}
    # render json: api_response.to_json
end


def login
    name= params["name"]
     pwd=params["password"]
     if User.find_by_email(email)
       if pwd == User.find_by_email(email).password
         api_response = { "status" =>"success"}
       else
         api_response = { "status" =>"failed"}
       end
      render json: api_response.to_json
    else
     api_response = { "status" =>"User does not"}
      render json: api_response.to_json
    end
end

 def show
   @users = Users.all
   response = {response => @users}
   render json: @response
 end

end
