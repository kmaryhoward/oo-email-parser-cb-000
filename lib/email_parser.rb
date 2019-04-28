class EmailParser
  attr_accessor :email_list
  @@email_list = ""

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    emails = @email_list.gsub(".com", ".com ")
    emails.split(/[,\s]+/).uniq

  end



end
