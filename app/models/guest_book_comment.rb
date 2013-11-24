# encoding: utf-8

class GuestBookComment < ActiveRecord::Base
  attr_accessible :user_id, :name, :password, :content
  validates_presence_of  :content, :message =>'필수값이 입력되지 않았습니다.'  
  belongs_to :guest_book, :autosave=>true, :counter_cache=>true
  belongs_to :user, :autosave=>true
  accepts_nested_attributes_for :guest_book, :allow_destroy => true  
end
