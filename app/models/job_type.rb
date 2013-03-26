class JobType < ActiveRecord::Base
  attr_accessible :name, :rate_per_hour

  validates :name, presence: true
  validates :rate_per_hour, presence: true

  belongs_to :employee
end
