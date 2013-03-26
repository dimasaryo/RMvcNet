class Branch < ActiveRecord::Base
  attr_accessible :address, :name, :zip_code

  validates :name, presence: true,
                   length: {maximum: 25}
  validates :address, presence: true,
                      length: {maximum: 100}
  validates :zip_code, presence: true,
                       format: {:with => /^[0-9]*$/i},
                       length: {minimum: 5, maximum: 5 }

  belongs_to :employee
end
