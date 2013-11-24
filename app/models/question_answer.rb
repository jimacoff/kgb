# encoding: utf-8

class QuestionAnswer < ActiveRecord::Base
  attr_accessible :user_id, :name, :password, :content
  validates_presence_of :content, :message =>'필수값이 입력되지 않았습니다.'   
  belongs_to :question, :autosave=>true, :counter_cache=>true
  belongs_to :user, :autosave=>true
  accepts_nested_attributes_for :question, :allow_destroy => true  
end
