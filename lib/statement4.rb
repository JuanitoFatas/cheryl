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
