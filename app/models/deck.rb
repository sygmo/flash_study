class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :title, :public, presence: true
end
