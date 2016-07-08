class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def new
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])
    contact.save
    redirect_to('/contacts')
  end

  def show
    id = params[:id]
    @contact = Contact.find(id)
  end

  def favorite
    id = params[:id]
    @contact = Contact.find(id)
    @contact.favorite = true
    @contact.save
  end
end
