class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/[, ]/).collect{ |email| email.strip }.uniq.delete_if{ |email| email == ""}
  end
end
