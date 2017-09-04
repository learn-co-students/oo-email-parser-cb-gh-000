# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list
  @@emails = []

  def initialize(email_list)
    @list = email_list
  end

  def self.all
    @@emails
  end

  def parse
    parts = @list.split(/, | /)
    parsedArr = []
    parts.each do |e|
      if !parsedArr.include?(e)
        parsedArr << e
      end
    end
    parsedArr
  end


end


# parser = EmailParser.new("avi@test.com, arel@test.com")
# parser.parse
