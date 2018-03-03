# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :raw_email

  def add_email(raw_email)
    @raw_email = raw_email
  end

  def initialize(raw_email)
    @raw_email = raw_email
  end

  def parse
    @raw_email.split(/,\s*|\s/).uniq
  end
end
