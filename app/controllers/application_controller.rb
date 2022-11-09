# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization

  protected

  def after_sign_in_path_for(_resource)
    venues_path
  end
end
