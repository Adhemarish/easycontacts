class NoteController < ApplicationController

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to contact_notes_path(@note.contact)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
