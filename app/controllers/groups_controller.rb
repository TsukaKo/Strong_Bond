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
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:group][:group])
    if @group.group_password == params[:group][:group_password]
      current_user.update(group_id: @group.id)
      redirect_to posts_path
    else
      redirect_to groups_path
    end
  end

  private
  def groups_params
    params.require(:group).permit(:group_name, :group_password)
  end

end
