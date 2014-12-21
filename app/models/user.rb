class User < ActiveRecord::Base
  has_many :charges
end
