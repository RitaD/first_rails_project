class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :title, presence: true,
                    length: { minimum: 5 }

  def best_comments
    comments.first(2)
  end
end
