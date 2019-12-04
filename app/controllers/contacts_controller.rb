class ContactsController < ApplicationController

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = Contact.find(params[:id])
    @notes = @contact.notes
    #@the_methode = 'contact'
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
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contact_path(@contact)
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :company, :location, :phone_number, :avatar)
  end
end
