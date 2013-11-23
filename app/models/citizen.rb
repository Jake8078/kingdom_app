class Citizen < ActiveRecord::Base
  validates :name, presence: true
end
