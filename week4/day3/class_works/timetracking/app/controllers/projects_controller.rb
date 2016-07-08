class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end

  def show
    @my_project = Project.find(params[:id])
                  # Project.where('id > #{paramas[:id]}')
    unless @my_project
      render 'no_projects_found'
    end
  end

  def new
    @my_project = Project.new
    render 'new'
  end

  def create
    @my_project = Project.new(
      name: params[:project][:name],
      description: params[:project][:description])
    @my_project.save

    redirect_to "/projects/#{@my_project.id}"
    # redirect_to projects_path (id: @my_project.id)
  end
end
