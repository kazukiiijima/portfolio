class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_posts, through: :favorites, source: :post
  has_many :comments
  def already_favorite?(post)
  	self.favorite.exists?(post_id: post.id)
  end

end
