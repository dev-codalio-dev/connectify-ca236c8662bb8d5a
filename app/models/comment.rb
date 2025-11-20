# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  rhino_owner :post
  rhino_references [ :user, :post ]
end
