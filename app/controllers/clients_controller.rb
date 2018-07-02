class ClientsController < ApplicationController
  
 
layout 'landing'
  

  # GET /clients/new
  def new
    @client = Client.new
  end

 

  # POST /clients

  def create
    @client = Client.new(client_params)

    
      if @client.save
       redirect_to root_path
       
      else
        render :new 
       
      end
     
   end

  
  

  private
   

    def client_params
      params.require(:client).permit(:name, :email, :phon, :age)
    end
end
