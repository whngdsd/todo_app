class Task < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name,    presence: true, length: { maximum: 140}
  validates :scheduled_on, presence: true
  attribute :scheduled_on, :date, default: Date.today

  def user
    return User.find_by(id: self.user_id)
  end
end