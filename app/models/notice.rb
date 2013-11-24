# encoding: utf-8

class Notice < ActiveRecord::Base
  is_impressionable
  attr_accessible :id, :user_id, :title, :notice_content_attributes
  validates_presence_of :title, :message =>'필수값이 입력되지 않았습니다.'
  belongs_to :user, :autosave=>true
  has_one :notice_content, :foreign_key => :id, :dependent => :destroy
  accepts_nested_attributes_for :notice_content, :allow_destroy => true
end
