class Profile < ApplicationRecord
  store_accessor :character, :kind
  store_accessor :character, :attributes
  store_accessor :character, :skills
  store_accessor :stats, :experience
  store_accessor :stats, :level

  belongs_to :student
end
