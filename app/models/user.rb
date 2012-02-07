class User < ActiveRecord::Base

  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/photos/:id/:style/:basename.:extension",
                    :default_url => "/assets/images/blank_profile.png",
                    :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"

  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :photo, :bio, :email, :password, :password_confirmation, :remember_me
end
