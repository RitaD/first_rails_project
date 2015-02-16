class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  def best_comments
    comments.first(2)
  end

  def plain_comments
    comments - best_comments
  end
end
