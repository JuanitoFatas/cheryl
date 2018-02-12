require_relative "date_object"

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

  def possible_dates
    DATES.map do |date|
      DateObject.new(date)
    end
  end

  def birthday
  end
end
