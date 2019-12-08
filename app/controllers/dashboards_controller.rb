class DashboardsController < ApplicationController

  before_action :set_alerts_dashboard, only: [:show]
  before_action :set_tags_dashboard, only: [:search]

  def search # set_tags_dashboard

    #@user_tags = current_user.tags.map { |tag| tag }

    return unless params[:query].present?

    if params[:query][:label] != ""
      @search = params[:query][:label].strip
      @notes = Tag.joins(:notes).where(label: @search).uniq[0].notes.each {|n| pp n.contact }

      # A REVOIR AVEC PIERRE GABRIEL SI POSSIBLE
      # sql = " \
      #   tags.label @@ :query \
      #   OR tags.label @@ :query \
      # "
      # @notes = Tag.joins(:notes).where(sql, query: "%#{params[:query]}%")
    end
  end

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @contacts = Contact.where(sql_query, query: "%#{params[:query]}%")
    else
      @contacts = []
    end
  end

  def show
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @contacts = Contact.where(sql_query, query: "%#{params[:query]}%")
    else
      @contacts = []
    end
  end

  private

  def set_alerts_dashboard
    @contacts_alerts = current_user.alerts
    @upcoming_contacts_alerts = @contacts_alerts.where('datetime >= ?', Date.today).order(:datetime)
  end

  def set_tags_dashboard
    @tags = current_user.tags
  end

  def tags_params
    params.require(:tags).permit(:label, :content, note_ids: [])  # :label ????
    #params.require(:note).permit(:content, tags_attributes: [:id, :label, :color])
  end
end
