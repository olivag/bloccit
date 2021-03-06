class User < ActiveRecord::Base
  has_many :posts

  def admin?
   role == 'admin'
  end
 
  def moderator?
   role == 'moderator'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

end
