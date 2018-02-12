require_relative "date_object"
require_relative "person"

class Cheryl
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

  class Statement3
    def initialize(date)
      @cheryl = Cheryl.new
      @albert = Person.new
      @bernard = Person.new
      @date = date.is_a?(DateObject) ? date : DateObject.new(date)
    end

    def valid?
      possible_dates_by_month.all? do |possible_date|
        not albert.know(possible_dates_by_month) and
        not bernard.know(cheryl.tell(possible_date.day))
      end
    end

    private

    attr_reader :cheryl, :albert, :bernard, :date

    def possible_dates_by_month
      cheryl.tell(date.month)
    end
  end

  def possible_dates
    DATES.map do |date|
      DateObject.new(date)
    end
  end

  def tell(part, possible_dates = possible_dates())
    possible_dates.select do |date|
      date.month == part || date.day == part
    end
  end

  def statement3(date)
    Statement3.new(date).valid?
  end

  def birthday
  end
end
