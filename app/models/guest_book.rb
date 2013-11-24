# encoding: utf-8

class GuestBook < ActiveRecord::Base
  is_impressionable
  attr_accessible :user_id, :title, :name, :password, :guest_book_content_attributes
  validates_presence_of :title, :on => :create, :message =>'필수값이 입력되지 않았습니다.'
  has_one :guest_book_content, :foreign_key => :id, :dependent => :destroy
  has_many :guest_book_comment, :dependent=> :destroy
  belongs_to :user, :autosave=>true
  accepts_nested_attributes_for :guest_book_content, :allow_destroy => true
  accepts_nested_attributes_for :guest_book_comment, :allow_destroy => true
  
  def authenticate(password)
    expected_password=self.make_encrypted_password(password,self.salt)
    if self.encrypted_password != expected_password
      return nil
    end
    return true    
  end
  
  def password
    @password
  end
  
  def password=(pwd)
    @password=pwd
    self.encrypted_password=make_encrypted_password(self.password, self.create_new_salt)
  end
  
  protected 
  
  def make_encrypted_password(password,salt)
    string_to_hash=password+'slboard'+salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
  def create_new_salt
    self.salt=self.object_id.to_s+rand.to_s
  end  
end