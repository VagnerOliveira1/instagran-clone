class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_uniqueness_of :post_id, uniqueness: { scope: :user_id, message: "Usuário já curtiu o post"}
end
