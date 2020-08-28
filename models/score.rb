class Score < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :score, greater_than: 0
end