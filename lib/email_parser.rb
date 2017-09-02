# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :mails

  def initialize(emails)
    @mails = emails
  end

  def parse
    mails.split.map do |elements|
      elements.split(",")
    end.flatten.uniq
  end
end
