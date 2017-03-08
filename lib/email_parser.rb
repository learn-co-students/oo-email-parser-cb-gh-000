# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end

  def parse
    temp = Array.new
    emails.split(/[, ]{1,2}/).each do |email|
      if !temp.include?(email)
        temp << email
      end
    end
    return temp
  end

end