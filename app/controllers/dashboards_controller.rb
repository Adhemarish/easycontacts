class DashboardsController < ApplicationController
  def show
    if params[:query].present?
      sql_query = " \
        contacts.first_name @@ :query \
        OR contacts.last_name @@ :query \
        "
      @contacts = Contact.where(sql_query, query: "%#{params[:query]}%")
    else
      @contacts = Contact.all
    end
  end
end




