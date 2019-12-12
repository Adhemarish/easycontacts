class DashboardsController < ApplicationController
  before_action :set_alerts_dashboard, only: [:show]
  before_action :set_tags_dashboard, only: [:search]

  def search # set_tags_dashboard
  end

  def search_by_tags
    if params.dig(:search, :tag_ids).present?
      @notes      = Note.joins(:tags).where(tags: { id: params[:search][:tag_ids] }).distinct
      @contacts   = Contact.joins(:tags).where(tags: { id: params[:search][:tag_ids] })
      @tag_labels = Tag.where(id: params[:search][:tag_ids]).pluck(:label)
    end
    respond_to do |format|
      format.js
    end
  end

  def show
  end

  def search_by_name
    if params[:query].present?
      @contacts = Contact.search_any_word("%#{params[:query]}%").where(user: current_user)
    else
      @contacts = Contact.all.order(:last_name).where(user: current_user)
    end
    respond_to do |format|
      format.js
    end
  end

    # rails c : Contact.find_by(first_name: 'Marc').notes.first.tags


  private

  def set_alerts_dashboard
    @contacts_alerts = current_user.alerts
    @upcoming_contacts_alerts = @contacts_alerts.where('datetime >= ?', Date.today).order(:datetime)
  end

  def set_tags_dashboard
    @tags = current_user.tags
  end

  def tags_params
    params.require(:tags).permit(:label, :content, note_ids: [])
  end
end
