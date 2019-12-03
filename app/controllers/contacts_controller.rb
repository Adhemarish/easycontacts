class ContactsController < ApplicationController

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = Contact.find(params[:id])
    @notes = @contact.notes
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user

    if @contact.save
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :company, :location, :phone_number, :avatar)
  end
end
