class Employee < ActiveRecord::Base
  has_many :salaries, dependent: :destroy
  has_many :holidays, dependent: :destroy
 validates :name, presence: true
end
