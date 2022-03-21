class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    group = Group.new(groups_params)
    group.save
    redirect_to posts_path
  end

  def index
    @groups = Group.all
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if group.password == params[:group_password]
      user.update(group_id: params[:group_id])
      redirect_to posts_path
    end
  end

  private
  def groups_params
    params.require(:group).permit(:group_name, :group_password)
  end

end
