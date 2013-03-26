class Employee < ActiveRecord::Base
  attr_accessible :address, :branch_id, :email, :employee_id, :first_name, :job_type_id, :last_name, :string

  validates :first_name, presence: true,
                         format: {:with => /^[a-zA-Z\d\s]*$/i}
  validates :last_name, presence: true,
                        format: {:with => /^[a-zA-Z\d\s]*$/i}
  validates :email, presence: true,
                    format: {:with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/i}
  validates :address, presence: true
  validates :branch_id, presence: true
  validates :job_type_id, presence: true

  has_one :branch
  has_one :job_type
end
