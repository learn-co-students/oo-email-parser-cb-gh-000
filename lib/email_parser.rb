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
    result = []
    emails = @emails.split(/,\s|\s/)
    emails.each do |email|
      if !result.include?(email)
        result << email
      end
    end
    result
  end

end
