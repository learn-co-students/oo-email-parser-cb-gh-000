# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :mails

  def initialize(mails)
    @mails = mails
  end

  def parse
    unique_mails = []
    all = mails.split(', ').collect{ |mails| mails.split(' ') }.flatten
    all.each do |mail|
      unique_mails << mail unless unique_mails.include?(mail)
    end
    unique_mails
  end

end
