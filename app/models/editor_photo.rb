# encoding: utf-8

require 'carrierwave/orm/activerecord'

class EditorPhoto < ActiveRecord::Base
  attr_accessible  :photo
  mount_uploader :photo, EditorUploader
end
