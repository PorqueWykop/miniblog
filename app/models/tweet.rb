class Tweet < ActiveRecord::Base
  attr_accessible :reply, :status
  validates :status, :presence => true
  def as_json(options = nil)
  	super(options ||
  		{only:status})
  end
end
