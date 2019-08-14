class User < ApplicationRecord
	has_many :attendances
	has_many :evenements, through: :attendances
    
    after_create :welcome_send
 
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
