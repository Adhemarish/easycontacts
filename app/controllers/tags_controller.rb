class TagsController < ApplicationController

  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    @checked = "checked" # autocompletion lors de la création
    @tag.color = Tag::COULEURS.sample
    if @tag.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:label, :color)
  end

end
