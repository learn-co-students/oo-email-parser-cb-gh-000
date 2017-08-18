# Class accepts a string of unformatted emails as a single string.
# The #parse method in the class seperates each e-mail within the string into
# unique email addresses. The delimiters to support are commas (',') or
# whitespace (' ').
class EmailParser
  # Initializes the Object with the emails instance variable.
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  # Method goes through the string of unformatted emails and returns an array
  # of parsed and formatted emails.
  def parse
    # RegExp explained:
    # Parses the e-mails by using the #split method on first any single comma
    # or whitespace character, followed by one or zero whitespace characters.
    email_parse = emails.split(/[,\s]\s?/)
    # Deletes any identical elements within the parsed email array.
    email_parse.uniq!
    # Returns the new array of parsed and unique emails.
    return email_parse
  end
end
