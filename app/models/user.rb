class User < ActiveRecord::Base
  has_many :submissions

  enum role: [:artist, :voter, :admin]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :artist
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
