# encoding: utf-8

class FaqContent < ActiveRecord::Base
  attr_accessible :content
  belongs_to :faq, :autosave=>true, :foreign_key => :id
  accepts_nested_attributes_for :faq
  validates_presence_of :content,:message=>'필수값이 입력되지 않았습니다.'  
end
