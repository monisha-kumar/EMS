class Employee < ApplicationRecord
  before_save {self.name = name.upcase}
  before_save {self.address = address.upcase}
  validates :name, presence: true
  validates :address, presence: true
  # belongs_to :user

end