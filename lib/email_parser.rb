class EmailParser
  attr_accessor :email_list
  @@email_list = ""

  def initialize(email_list)
    @email_list = email_list
    @@email_list << email_list
  end

  def parse
    if @@email_list.scan(/,/).empty?
      @@email_list.split(" ").uniq
    else
      @@email_list.gsub(",", " ").split(" ").uniq
    end

  end

end
