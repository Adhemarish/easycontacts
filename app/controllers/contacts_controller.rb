class ContactsController < ApplicationController

  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = Contact.find(params[:id])
    @notes = @contact.notes.order('updated_at DESC')
    #@upcoming_alerts = @contact.alerts.where('datetime >= ?', Date.today).order(:datetime)
    @nb_upcoming_alerts = @contact.alerts.where('datetime >= ?', Date.today).order(:datetime).count
    @nb_notes = @contact.notes.count
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
    @nb_upcoming_alerts = @contact.alerts.where('datetime >= ?', Date.today).order(:datetime).count
    @nb_notes = @contact.notes.count
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update!(contact_params)
      redirect_to edit_contact_path(@contact)
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to dashboard_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :company, :location, :phone_number, :avatar, :job, :meeting_place, :meeting_date)
  end
end
