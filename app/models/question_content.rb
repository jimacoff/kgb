# encoding: utf-8

class QuestionContent < ActiveRecord::Base
  attr_accessible :content
  validates_presence_of :content, :message =>'필수값이 입력되지 않았습니다.'        
  belongs_to :question, :foreign_key => :id, :autosave=>true
  accepts_nested_attributes_for :question, :allow_destroy => true
end
