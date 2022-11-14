# frozen_string_literal: true

class Venue < ApplicationRecord
  include VenueStateLogic

  belongs_to :user

  has_many_attached :images

  validates :name, :country, :city, :state, :description, presence: true
end
