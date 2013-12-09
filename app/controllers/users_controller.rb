class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.includes(:orders).non_admin.group(:user_id).having("SUM(orders.total) > #{min_total}").references(:orders)
  end

  private

  def min_total
    params[:min_total] || 60
  end
end
