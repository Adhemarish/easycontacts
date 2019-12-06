class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]

  def new
    @contact = Contact.find(params[:contact_id])
    @note = Note.new
    @tags = current_user.tags
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @note = Note.new(note_params)
    @note.contact = @contact

    if @note.save
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def edit
    @note = Note.find(params[:id])
    @contact = @note.contact
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to contact_path(@note.contact)
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to contact_path(@note.contact)
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content, tag_ids: [])
  end
end
