class CallsController < ActionController::Base

  before_action :authenticate_user!

  def index
    @calls = current_user.calls.all
  end
end
