# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(str)
    @email_addresses=[]
    list = str.split(/, | /)
    list.each {|i| @email_addresses << i.strip}
    @email_addresses
  end
  def parse
    list = []
    @email_addresses.each {|i| list.include?(i) ? nil : list << i}
    list
  end
end
