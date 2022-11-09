# frozen_string_literal: true

class Venue < ApplicationRecord
  belongs_to :user

  has_many_attached :images
end
