# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emailString

  def initialize(emailString)
    @emailString = emailString
  end

  def parse
    array = []
    array = @emailString.split(", ")
    finalArr = []
    array.each do |emails|
      finalArr << emails.split(" ")
    end
    finalArr.flatten().uniq
  end
end
