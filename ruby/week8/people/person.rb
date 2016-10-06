class Person
  def initialize(options = {})
    @first = options[:first]
    @last = options[:last]
  end

  def intro_yourself
    "Hi I am #{full_name}"
  end

  def full_name
    "#{@first} #{@last}"
  end
end
