class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.user_id = current_user.id

    if @tag.save
      redirect_to contact_path(@contact)
    else
      render :edit
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:label)
  end

end


<%= simple_form_for(@contact) do |f| %>
  <%= f.input :label %>
  <%= f.button :submit, 'Créer un nouveau tag', class: 'btn btn-primary' %>
<% end %>
