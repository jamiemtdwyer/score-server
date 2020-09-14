class Score < ActiveRecord::Base
  validates_presence_of :name
	validates_numericality_of :score, greater_than: 0
	validates_numericality_of :levelId, greater_than: 0

  attribute :rank, :integer

  def rank
    self.class.where("score > ?", score).count + 1
  end
end