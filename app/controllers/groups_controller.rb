class GroupsController < ApplicationController
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    @group.save
    redirect_to groups_path
  end
  
  def show
  end

  def index
    @book = Book.new
    @groups = Group.all
  end

  def edit
  end
  
  private
  def group_params
    params.require(:group).permit(:name, :introduction, :profile_image)
  end
end
