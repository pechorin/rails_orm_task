require 'rspec'

$database_result = [
  { id: 2, name: 'Teodor', age: 21 },
  { id: 3, name: 'Anthony', age: 40 },
  { id: 1, name: 'Michael', age: 21 },
]

class ApplicationRecord
  # TODO: write your solution here
  # define where, order methods
  
  def self.where(args)
    self
  end

  def self.sort(args)
    self
  end

  def self.order(args)
    self
  end
  
  def self.execute_sql
    # SQL query -> returns database result
    $database_result
  end
end

class User < ApplicationRecord; end

