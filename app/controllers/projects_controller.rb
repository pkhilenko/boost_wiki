class ProjectsController < ApplicationController
  before_action :load_model, only: [:edit, :update, :destroy]

  def index
    @projects = Project.all.page(params[:page])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

 private

   def project_params
     params.require(:project).permit(:title, :image)
   end

   def load_model
     @project = Project.find(params[:id])
   end
end
