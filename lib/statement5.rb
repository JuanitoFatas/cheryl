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
