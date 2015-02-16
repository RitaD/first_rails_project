class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :comments
  belongs_to :comment

end
