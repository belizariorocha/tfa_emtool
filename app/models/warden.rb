class Warden < ApplicationRecord
    validates :role, :presence => true
    validates :office, :presence => true, :uniqueness => { :scope => :role }
    validates :staff_member_id, :presence => true, :uniqueness => true
end
