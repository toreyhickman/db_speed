class KarmaPoint < ActiveRecord::Base
  # after_save(self.user.update_user_karma)
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  def update_user_karma
    self.user.update_karma_count(self.value)
  end
end
