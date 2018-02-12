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
