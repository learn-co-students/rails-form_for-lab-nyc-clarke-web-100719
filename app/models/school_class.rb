class SchoolClass < ApplicationRecord

  validates :title, :room_number, presence: true

  def to_s
    self.title + " " + self.room_number.to_s
  end
end
