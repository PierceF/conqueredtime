class JournalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @journals = current_user.journals
  end

  # def show
  #   @enties = Entry.all
  # end

  def new
    @journals = Journal.all
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user = current_user
    if @journal.save
      redirect_to journal_entries_path(@journal)
    else
      render :new
    end
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:title)
  end
end
