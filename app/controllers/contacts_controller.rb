class ContactsController < ApplicationController
  before_action :find_contact, only: %i[show edit update destroy]

  def index
    @contacts = Contact.all
  end

  def show; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact, notice: 'Contact created.'
    else
      render :new
    end
  end

  private

  def find_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email)
  end
end
