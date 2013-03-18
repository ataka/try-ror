class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes, :image

  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  has_many  :comments, :dependent => :destroy
  has_many  :tags
  has_attached_file :image,
                    :styles => { :medium => "300x300", :thumb => "100x100" },
                    :default_url => "/images/:style/missing.png"

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
