class User < ApplicationRecord
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  has_many :sender_comments, foreign_key: 'sender_id', class_name: "Comment"
  has_many :received_comments, foreign_key: 'recipient_id', class_name: "Comment"

  has_many :sent_messages, foreign_key: 'senderMP_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipientMP_id', class_name: "PrivateMessage"


  has_many :rents
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end