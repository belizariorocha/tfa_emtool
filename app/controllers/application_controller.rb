class ApplicationController < ActionController::Base
   def index
     @message = "Hey everyone!"
     render("/layouts/index.html.erb")
   end
  
  def temp1
      @office = "Gerudo"
      @role = "EW"
      @pic = "https://static.comicvine.com/uploads/square_small/15/150097/5527047-gokulove.jpg"
      @name = "Son Goku"
      @email = "son.goku@trachforamerica.org"
      @phone = "3129999999"
      @acknowledged = "Yes"
      
      render("/layouts/temp1.html.erb")
  end
  
  def temp4
     @name = "Chicago"
     @region = "Chicago"
     @city = "Chicago"
     @state = "IL"
     @email = "son.goku@trachforamerica.org"
     @phone = "3129999999"
     @acknowledged = "Yes"
     render("/layouts/temp4.html.erb")
  end
  
  
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
