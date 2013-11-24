# encoding: utf-8

class NoticeContent < ActiveRecord::Base
  attr_accessible :content
  validates_presence_of :content, :message =>'필수값이 입력되지 않았습니다.' 
  belongs_to :notice, :foreign_key => :id, :autosave=>true
  accepts_nested_attributes_for :notice, :allow_destroy => true
end
