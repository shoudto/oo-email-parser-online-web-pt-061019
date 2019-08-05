require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
   # binding.pry
    @emails = emails
  end

  def parse
    array = []
    emails.split(/, | /) do |email|
     array << email
    end
    array.uniq
  end

end
