class EmailParser
 attr_accessor :emails
 def initialize(emails)
   @emails = emails
 end
 def parse

   email_array = emails.split(/,|\s/)
   email_array.reject{ |e|e.empty?}.uniq
end
end
