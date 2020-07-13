# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(mails)
    @mails=mails
  end
  def parse
    arr=Array.new
    arr2=Array.new
    arr=@mails.split(" ")
    arr.each do |m|
      m.split(",")
      if m.is_a?(Array)
        m.each do |singlem|
          singlem=singlem.delete_suffix(",")
          arr2<<singlem
        end
      else
        m=m.delete_suffix(",")
        arr2<<m
      end
    end
    arr3=Array.new
    arr2.each do |m|
      if arr2.count(m)==1
        arr3<<m
      else
        if arr3.count(m)==0
          arr3<<m
        end
      end
    end
    return arr3
  end
end
