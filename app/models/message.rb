class Message < ApplicationRecord
    validates :sender, :email, :message, :ip, presence: true
end
