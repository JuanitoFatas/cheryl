require_relative "date_object"
require_relative "person"

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

  class Statement4
    def initialize(date)
      @cheryl = Cheryl.new
      @bernard = Person.new
      @date = date.is_a?(DateObject) ? date : DateObject.new(date)
    end

    def valid?
      not bernard.know(at_first) and bernard.know(dates_for_statement3_is_true)
    end

    private

    attr_reader :cheryl, :bernard, :date

    def at_first
      cheryl.tell(date.day)
    end

    def dates_for_statement3_is_true
      at_first.select { |date| Statement3.new(date).valid? }
    end
  end

  class Statement5
    def initialize(date)
      @cheryl = Cheryl.new
      @albert = Person.new
      @date = date.is_a?(DateObject) ? date : DateObject.new(date)
    end

    def valid?
      albert.know dates_for_statement4_is_true
    end

    private

    attr_reader :cheryl, :albert, :date

    def possible_dates
      cheryl.tell date.month
    end

    def dates_for_statement4_is_true
      possible_dates.select { |date| cheryl.statement4(date) }
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
