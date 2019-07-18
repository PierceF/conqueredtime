class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def default_url_options
    # { host: ENV["www.conqueredtime.com"] || "localhost:3000" }
    if Rails.env.production?
      { host: "www.conqueredtime.com" }
    else
      { host: "localhost:3000" }
    end
  end
end
