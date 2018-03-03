class ApplicationController < ActionController::API
  before_action :check_limit

  private

  def check_limit
    result = Bottleneck.check(request.remote_ip)
    render status: result[:status], json: { message: result[:message] }
  end
end
