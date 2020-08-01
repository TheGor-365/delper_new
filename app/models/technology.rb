class Technology < ApplicationRecord
  has_many :lessons
  has_many :questions
  has_many :projects
end
