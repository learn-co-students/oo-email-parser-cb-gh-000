# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def parse
    self.data.scan(/\w+\@\w+\.[A-Z]{2,4}/i).uniq
  end
end
