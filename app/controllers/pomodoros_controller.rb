class PomodorosController < ApplicationController
  def new
    @pomodoro = Pomodoro.new
    @milestone = Milestone.find(params[:milestone_id])
  end

  def create
    @pomodoro = Pomodoro.new
    @pomodoro.milestone = Milestone.find(params[:milestone_id])
    @pomodoro.save!
    # redirect_to pomodoro_path(@pomodoro)
    redirect_to @pomodoro
  end

  def show
    # time_frame = 25
    # @duration = 25.minutes
    @pomodoro = Pomodoro.find(params[:id])

    # @milestone_time = (Time.now(end) - Time.now(start)).to_i

    # @remaining_seconds = (@pomodoro.created_at + @duration - Time.now).to_i

    # mins = @remaining_seconds / 60
    # seconds = @remaining_seconds % 60

    # @remaining = "#{mins}min #{seconds}sec"

    @entry = @pomodoro.milestone.entry
  end

  def update
    @pomodoro = Pomodoro.find(params[:id])

    if params[:pomodoro][:action] == 'start'
    elsif params[:pomodoro][:action] == 'done'
    end
  end
end
