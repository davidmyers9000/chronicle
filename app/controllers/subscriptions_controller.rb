class SubscriptionsController < ApplicationController
  before_action :set_group
  before_action :authorize_admin!
  before_action :set_subscription, only: :destroy

  def new
    @users = User.all
  end

  def create
    if @group.update(subscription_params)
      redirect_to groups_path
    end
  end

  def destroy
    @subscription.destroy
    redirect_to groups_path
  end

  private
    def set_group
      @group = Group.find(params[:group_id])
    end

    def set_subscription
      @subscription = Subscription.find_by(group_id: params[:group_id], user_id: params[:user_id])
    end

    def subscription_params
      params.require(:group).permit(user_ids: [])
    end

    def authorize_admin!
      unless current_user.role == 'admin'
        redirect_to @group, notice: "You must be an admin to complete this action."
      end
    end
end