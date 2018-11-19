class Movie < ApplicationRecord
  before_create :set_rank
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates_numericality_of :rank, only_integer: true, greater_than: 0

  private

  def set_rank
    self.rank ||= Movie.maximum(:rank) + 1
  end
end
