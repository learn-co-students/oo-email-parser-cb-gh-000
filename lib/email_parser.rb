# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_list
  
  def initialize(emails)
  	@emails_list = emails
  end

  def parse
  	splitted_list = @emails_list.split(" ")
  	splitted_list.map!{|element| element.gsub(/,/, '')}
  	splitted_list.uniq!
  	splitted_list
  end
end

