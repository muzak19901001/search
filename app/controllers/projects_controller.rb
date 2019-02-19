class ProjectsController < ApplicationController
  def index
    @q = Project.ransack(params[:q])
    @projects = @q.result(distinct: true)
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_url
    else
      render :new
    end
  end
  
  private
  
  def project_params
    params.require(:project).permit(:first_name, :last_name, :age)
  end  
  
  def search_params
    params.require(:q).permit!
  end
end
