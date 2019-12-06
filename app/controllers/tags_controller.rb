class TagsController < ApplicationController

  # def new
  #   @tag = Tag.new
  # end

  def create
    logger.debug "-----------------------CREATE TAG-------------"
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    @checked = "checked"
    #@tag_color = Tag::COULEURS.sample

    if @tag.save
      respond_to do |format|
        format.js
      end
    end
    #redirect_to ?
  end

  def destroy
    logger.debug "-----------------------DELETE TAG-------------"
    @tag = Tag.find(params[:id])
    if @tag.destroy
      respond_to do |format|
        format.js
      end
    # redirect_to ?
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:label)
  end

end
