# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  attr_accessor :parse

  def initialize(str)
    self.parse=(str)
  end
  def parse=(str)
    @parse = str.split(/[ ,]/).delete_if{|s| s.size==0}.uniq
  end
end
