class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  validates :message, presence: true
  after_create :send_comment_email

  RATINGS = {
    '1 star': 1,
    '2 stars': 2,
    '3 stars': 3,
    '4 stars': 4,
    '5 stars': 5,
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
      NotificationMailer.comment_added(self).deliver_now
  end

  def average
    self.sum/self.length
  end
end


