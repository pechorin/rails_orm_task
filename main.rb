$database_result = [
  { id: 2, name: 'Teodor', age: 21 },
  { id: 3, name: 'Anthony', age: 40 },
  { id: 1, name: 'Michael', age: 21 },
]

class ApplicationRecord
  def self.execute_sql
    # SQL query -> returns database result
    $database_result
  end

  # TODO: Your code goes here..
end

class User < ApplicationRecord; end

