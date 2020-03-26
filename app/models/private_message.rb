class PrivateMessage < ApplicationRecord
  belongs_to :senderMP, class_name: "User"
  belongs_to :recipientMP, class_name: "User"
end