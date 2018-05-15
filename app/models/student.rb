class Student < ApplicationRecord
  validates_presence_of :name, presence: true
end
