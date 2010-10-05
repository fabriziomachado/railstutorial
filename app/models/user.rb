# == Schema Information
# Schema version: 20100831221021
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :name, :email
  validates :name, :presence => true,
                   :length => { :maximum => 50}
  validates :email, :presence => true,
                    :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    :uniqueness => { :case_sensitive => false }



  #has_many :microposts
  
  
end
