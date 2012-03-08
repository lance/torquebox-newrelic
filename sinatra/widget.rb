require 'dm-core'
require 'dm-migrations'

class Widget
  include DataMapper::Resource
  property :id, Serial
  property :name, String
end

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize
DataMapper.auto_upgrade!


