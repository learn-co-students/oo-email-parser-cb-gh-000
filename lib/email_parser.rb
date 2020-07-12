# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser 
  attr_accessor :email 
  
  def initialize(email) 
    @email = email 
  end 
  
  def parse
    email.split.collect do |t|
      t.split(',')
    end.flatten.uniq
  end 
end 