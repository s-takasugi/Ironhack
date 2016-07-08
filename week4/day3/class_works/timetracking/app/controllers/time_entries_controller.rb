class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries
  end

  def new
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.create(
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes],
      date: params[:time_entry][:date])

    if @entry
      redirect_to action: 'index',
                  controller: 'time_entries',
                  projcet_id: @project.id
    else
      render 'new'
    end
  end
end
