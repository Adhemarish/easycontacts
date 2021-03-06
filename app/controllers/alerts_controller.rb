class AlertsController < ApplicationController
  before_action :set_contact, only: [:new, :create, :index]
  before_action :set_alerts, only: [:new, :create, :index]

  def index
    @all_alerts = @contact.alerts.order(:datetime)
  end

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)
    @alert.contact = @contact

    if @alert.save
      redirect_to contact_alerts_path(@contact)
    else
      flash[:notice] = @alert.errors.full_messages.join
      render :new
      @alert = Alert.new(alert_params)
    end
  end

  def destroy
    @alert = Alert.find(params[:id])
    @alert.destroy
    redirect_to contact_alerts_path(@alert.contact)
  end

  private

  def set_alerts
    @upcoming_alerts = @contact.alerts.where('datetime >= ?', Date.today).order(:datetime)
  end

  def set_contact
    @contact = current_user.contacts.find(params[:contact_id])
  end

  def alert_params
    params.require(:alert).permit(:title, :datetime)
  end
end
