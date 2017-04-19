# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :emails
  @@all = []

  def initialize(emails)
    @@all  = emails
  end

  def parse
    if @@all.include?(",") && @@all.include?(" ")
      z = []
      x = @@all.split(",")
      x.each do |s|
        if s.include?(" ")
          s.split(" ").each{|a| z << a}
        else
          z << s
        end
      end
      return z.uniq
    elsif @@all.include?(",")
      x = @@all.split(",")
      x.each_with_index{|s, i| x[i] = s.strip }
      return x.uniq
    else
      x = @@all.split(" ")
      x.each_with_index{|s, i| x[i] = s.strip }
      return x.uniq
    end
  end


end


s = EmailParser.new("avi@test.com, avi@test.com").parse
print s
