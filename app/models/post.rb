class Post < ActiveRecord::Base  
  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end  

post = Post.first  

def index  
 @posts = Post.all
end  