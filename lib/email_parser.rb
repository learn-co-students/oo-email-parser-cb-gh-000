# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor:emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    a = @emails.split(/[, \ ]/)
    a.delete_if{|e| e.length == 0}
    b = []
    a.each do |e|
      if !b.include?(e)
        b << e
      end
    end
    b
  end
end
