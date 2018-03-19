# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
	@@all = []
	def initialize(emails)
		@emails = emails
	end

	def parse
		@all = @emails.split(/[, ]/).uniq.delete_if {|w| w == ""}
		# search each email by index
		# if email matches index more than once
	end

end
