# encoding: utf-8

require 'carrierwave/orm/activerecord'

class Gallery < ActiveRecord::Base
  attr_accessible :id, :title, :photo, :photo_cache, :gallery_category_id, :content
  validates_presence_of :title, :photo, :message =>'필수값이 입력되지 않았습니다.' 
  belongs_to :gallery_category
  mount_uploader :photo, GalleryPhotoUploader
end
