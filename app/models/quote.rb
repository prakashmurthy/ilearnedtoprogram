class Quote < ActiveRecord::Base
  validates :quote_text, :name, :url, :email, :presence => true
  
  validates :name, :length => {:minimum => 4, :maximum => 50}
  validates :quote_text, :length => {:minimum => 25}
  validates :url, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
  validates :email, :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  before_create :generate_uuid
  
  def generate_uuid
    self.uuid = UUIDTools::UUID.timestamp_create.hexdigest
  end
end
