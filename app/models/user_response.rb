class UserResponse < ApplicationRecord
  belongs_to :survey
  belongs_to :question
  belongs_to :answer
end
