# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :email_addresses_filetext, :email_addresses

  def initialize(email_addresses)
    @email_addresses_filetext = email_addresses
    @email_addresses = []
  end

  def parse
    self.email_addresses_filetext.split(/ |, |,/).each do |email|
      if !@email_addresses.include?(email)
        @email_addresses << email
      end
    end
    @email_addresses
  end

end
