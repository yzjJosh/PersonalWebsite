class User < ApplicationRecord
    validates :name, :password, presence: true
    validates :name, uniqueness: true
end
