# encoding: utf-8

class AnonBoard < ActiveRecord::Base
  
  def authenticate(password)
    expected_password=self.encrypted_password(password,self.salt)
    if self.password_digest != expected_password
      return nil
    end
    return true    
  end
  
  def password
    @password
  end
  
  def password=(pwd)
    @password=pwd
    self.password_digest=encrypted_password(self.password, self.create_new_salt)
  end
  
  protected 
  
  def encrypted_password(password,salt)
    string_to_hash=password+'slboard'+salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
  def create_new_salt
    self.salt=self.object_id.to_s+rand.to_s
  end
end