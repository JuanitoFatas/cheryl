require_relative "date_object"
require_relative "person"
require_relative "statement3"
require_relative "statement4"
require_relative "statement5"

class Cheryl < Person
  DATES = [
    "May 15",
    "May 16",
    "May 19",
    "June 17",
    "June 18",
    "July 14",
    "July 16",
    "August 14",
    "August 15",
    "August 17"
  ]

  def possible_dates
    DATES.map do |date|
      DateObject.new(date)
    end
  end

  def tell(part)
    possible_dates.select do |date|
      date.month == part || date.day == part
    end
  end

  def statement3(date)
    Statement3.new(date).valid?
  end

  def statement4(date)
    Statement4.new(date).valid?
  end

  def statement5(date)
    Statement5.new(date).valid?
  end

  def birthday
    possible_dates.select do |date|
      statement3(date) and statement4(date) and statement5(date)
    end
  end
end
