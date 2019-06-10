# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @emails = []

  def initialize(emails)
    @emails = emails.split(/[ ,]/)
  end

  def parse
    email_f = []
    @emails.each do |email|
      if email != ""
        email_f << email
      end
    end
    has = {}
    email_f.each do |a|
      has[a] = false
    end
    output =[]
    has.each do |key, val|
      output << key
    end
    output
  end

  def duplicate(e)
    has = {}
    e.each do |a|
      has[a] = false
    end
    has
  end
end
