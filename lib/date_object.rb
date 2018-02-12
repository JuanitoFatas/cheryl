class DateObject
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def month
    @month ||= date.split.first
  end

  def day
    @day ||= date.split.last
  end

  def inspect
    date
  end

  def to_s
    date
  end
end
