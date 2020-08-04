class Question < ApplicationRecord
  belongs_to :technology
  has_many :answers
end
