# frozen_string_literal: true

class VenuePolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    user.present?
  end

  def edit?
    user.present?
  end
end
