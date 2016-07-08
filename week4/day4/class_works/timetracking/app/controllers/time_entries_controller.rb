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

  def edit
    @project = Project.find params[:project_id]
    @entry = @project.time_entries.find params[:id]
  end

  def update
    @project = Project.find params[:project_id]
    @entry = @project.time_entries.find params[:id]

    if @entry.update(entry_params)
                  # hours: params[:time_entry][:hours],
                  # minutes: params[:time_entry][:minutes],
                  # date: params[:time_entry][:date],
                  # comments: params[:time_entry][:comments]
      redirect_to action: 'index',
                  controller: 'time_entries',
                  project_id: @project.id
    else
      render 'edit'
    end
  end
  private

  def entry_params
    params.require(:time_entry).permit(:hours, :minutes, :date)
  end
end
