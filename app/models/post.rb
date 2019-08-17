class Post < ApplicationRecord
	has_many :comment
	validates :title, presence: true, length: {minimum: 2}
end
