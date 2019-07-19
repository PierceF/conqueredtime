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
    @pomodoro = Pomodoro.find(params[:pomodoro_id])
    @journal = @entry.journal
    @milestone = @pomodoro.milestone
    @achievements = @journal.achievements.all
    # @pomodoro = Pomodoro.find(Milestone.find(params[:id]).pomodoro)
    create_badge
    # get_started
    @trophies = []
    find_achievements
  end

  private

  def milestone_params
    params.require(:milestone).permit(:title)
  end

  def set_milestone
    @milestone = Milestone.find(params[:id])
  end

  def get_started
    return false unless (@journal.trophies.find_by name: "Got started on a new journey.").nil?

    Achievement.create!(journal_id: @journal.id, trophy: (Trophy.find_by name: "Got started on a new journey."))
  end

  def create_badge
    return false unless (@journal.trophies.find_by name: "You've spent 5 hours on this journal").nil?

    return false unless @journal.journal_minutes >= 5

    Achievement.create!(journal_id: @journal.id, trophy: (Trophy.find_by name: "You've spent 5 hours on this journal"))
  end

  def find_achievements
    @achievements.each do |achievement|
      if achievement.shown == false
        achievement.shown = true
        achievement.save!
        @trophies << achievement.trophy
      end
    end
  end
end
