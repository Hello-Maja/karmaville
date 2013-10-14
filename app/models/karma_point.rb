class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user
  
  after_save(on: :create) do
    user = User.find(self.user_id)
    user.total_karma += self.value
  end
  # validates :user, :presence => true
  # validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  # validates :label, :presence => true
end
