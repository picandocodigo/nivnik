class ContactsController < ApplicationController

  def index
    @page_title = "Contacts"
    @contacts = Contact.order(:surname)
  end

  def new
    @page_title = "New Contact"
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to @contact
  end

  def edit
    @page_title = "Editing contact"
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
    @page_title = "#{@contact.name} #{@contact.surname}"
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :surname, :description,
                                    :phone_number, :email, :notes)
  end
end
