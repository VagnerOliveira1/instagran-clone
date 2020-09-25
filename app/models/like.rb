class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :post_id, uniqueness: { scope: user, message: "Usuário já curtiu o post"}
end
