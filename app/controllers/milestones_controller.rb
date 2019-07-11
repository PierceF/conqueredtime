class MilestonesController < ApplicationController
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

  private

  def milestone_params
    params.require(:milestone).permit(:title)
  end
end
