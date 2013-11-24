# encoding: utf-8

class Faq < ActiveRecord::Base
  attr_accessible :id, :faq_category_id, :title, :faq_content_attributes
  validates_presence_of :title,:message=>'필수값이 입력되지 않았습니다.'  
  belongs_to :faq_category, :autosave=>true
  has_one :faq_content, :foreign_key => :id, :dependent=>:destroy
  accepts_nested_attributes_for :faq_content, :allow_destroy => true  
end
