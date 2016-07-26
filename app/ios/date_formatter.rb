class DateFormatter
  def self.format_date(date_string)
    date_string.nsdate.string_with_style(NSDateFormatterMediumStyle, NSDateFormatterShortStyle)
  end
end
