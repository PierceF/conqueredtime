class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show]
  def new
    @entry = Entry.find(params[:id])
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.entry = Entry.find(params[:entry_id])
    @milestone.save
    redirect_back fallback_location: entry_path(@milestone.entry)
  end

  def show
    @entry = @milestone.entry
  end

  private

  def milestone_params
    params.require(:milestone).permit(:title)
  end

  def set_milestone
    @milestone = Milestone.find(params[:id])
  end
end
