# encoding: utf-8

class FaqCategory < ActiveRecord::Base
  attr_accessible :title
  validates_presence_of :title,:message=>'필수값이 입력되지 않았습니다.'    
  has_many :faq, :dependent=> :destroy
end
