class NoteController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]

  def edit

  end

  def update
    if @note.update(note_params)
      redirect_to contact_notes_path(@note.contact)
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end
