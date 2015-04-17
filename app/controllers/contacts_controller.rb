class ContactsController < ApplicationController

  def index
    @page_title = "Contacts"
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to @contact
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :surname, :description,
                                    :phone_number, :email, :notes)
  end
end
