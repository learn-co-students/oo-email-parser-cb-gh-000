# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end

  def parse
    self.emails = self.emails.split(/, | /)
    self.emails.map do |e|
      if self.emails.count(e) > 1
        self.emails.delete_at(self.emails.index(e))
      else
        e
      end
    end
  end

end