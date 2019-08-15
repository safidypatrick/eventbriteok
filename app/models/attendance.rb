class Attendance < ApplicationRecord
	belongs_to :user 
	belongs_to :evenement
	  
	   after_create :new_send
  def new_send
    AttendanceMailer.new_email(self).deliver_now
  end
	
end
