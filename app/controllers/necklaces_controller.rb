class NecklacesController < ApplicationController

  def index
    @necklaces = Necklace.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create 
    necklace = Necklace.new(
      name: params[:form_name],
      description: params[:form_description],
      image: params[:form_image],
      price: params[:form_price]
      )
    necklace.save
    render "create.html.erb"
  end
   
  def show
    necklace_id = params[:id]
    @necklace = Necklace.find_by(id: necklace_id)
    render "show.html.erb"
  end 

  def edit
    necklace_id = params[:id]
    @necklace = Necklace.find_by(id: necklace_id)
    render "edit.html.erb"
  end

  def update
    necklace_id = params[:id]
    necklace = Necklace.find_by(id: necklace_id)
    necklace.name= params[:form_name]
    necklace.description= params[:form_description]
    necklace.image= params[:form_image]
    necklace.price= params[:form_price]   
    necklace.save
    render "update.html.erb"
  end
end
