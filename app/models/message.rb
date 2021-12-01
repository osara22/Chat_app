class Message < ApplicationRecord
  belongs_to :users
  belongs_to :rooms
  
  validates :body, presence: true
end
