class TagsController < ApplicationController

  # def new
  #   @tag = Tag.new
  # end

  def create
    logger.debug "-----------------------CREATE TAG-------------"
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    if @tag.save
      respond_to do |format|
        format.js
      end
    end
    #redirect_to 'New note',
  end


    # if @tag.save
    #   redirect_to contact_path(@contact)
    # else
    #   render :edit
    # end

  private

  def tag_params
    params.require(:tag).permit(:label)
  end

end
