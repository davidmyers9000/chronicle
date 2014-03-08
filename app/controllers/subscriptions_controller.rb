class SubscriptionsController < ApplicationController
  before_action :set_group
  before_action :set_subsctiption, only: :destroy

  def new
    @users = @group.users
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

end
