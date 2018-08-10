require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@all = []
  
  attr_accessor :emails
  
  
  def self.new(emails)
    @emails = emails.scan(/[a-z]+@[a-z]+.[a-z]{3}/)
    # binding.pry 
    @emails.each {|email| @@all << email}
    self
  end 
  
  def self.parse
    @emails.uniq
  end
end 