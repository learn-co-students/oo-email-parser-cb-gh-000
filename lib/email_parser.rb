# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails_as_str)
    self.emails = []

    emails_separated = emails_as_str.split(" ")
    
    emails_separated.each do |email|
      self.emails << email.chomp(",")
    end

  end

  def parse
    return self.emails.uniq
  end

end
