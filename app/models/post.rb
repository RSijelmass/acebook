class Post < ApplicationRecord
  has_many :comments
  has_many :flags
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.build(post_params, source_class = Source)
    source = source_class.in(post_params[:message]).first
    create(source ? post_params.merge(source_id: source.id) : post_params)
  end
end
