class Attendee

  attr_reader :id, :zipcode, :name
  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @zipcode = zipcode.to_s.rjust(5,"0")[0..4]
    @name = "#{first_name} #{last_name}"
  end

  def display
    "#{id}: #{name}, #{zipcode}"
  end

  def clean_zip
    if zipcode.nil?
      "00000"
      elsif zipcode.length == 5
      zipcode
      elsif zipcode.length > 5 
      zipcode[0..4]
      elsif zipcode.length < 5
      zipcode.rjust(5, '0')
      end
  end
end