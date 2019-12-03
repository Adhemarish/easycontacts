class ContactsController < ApplicationController

  def index
    # if params[:query].present?
    #   sql_query = "title ILIKE :query OR syllabus ILIKE :query"
    #   @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @movies = Movie.all
    # end
  end

  def show
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
