# frozen_string_literal: true

class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :city
      t.string :state
      t.string :country
      t.string :street
      t.string :status

      t.timestamps
    end
  end
end
