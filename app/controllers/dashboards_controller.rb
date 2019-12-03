class DashboardsController < ApplicationController
  def show
    if params[:query].present?
      sql_query = " \
        contacts.first_name @@ :query \
        OR contacts.last_name @@ :query \
        "
      @contacts = Contact.where(sql_query, query: params[:query])
    else
      @contacts = Contact.all
    end
  end
end



sql_query = []

xxxx split " " each word
  sql_query << truc first_name ILIKE '%word% OR last_name ILIKE same same'

sql_query.join(" OR ")
