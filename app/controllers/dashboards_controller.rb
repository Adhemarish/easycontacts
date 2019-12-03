class DashboardsController < ApplicationController
  def show
     if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @contacts = Contact.where(sql_query, query: "%#{params[:query]}%")
          # puts "Aucun contact ne correspond à votre recherche."
    end
  end
end
