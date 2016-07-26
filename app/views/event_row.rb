class EventRow < UI::ListRow
  def initialize
    self.flex_direction = :column
    self.padding = [10, 10, 10, 10]
    add_child(title)
    add_child(start_time)
    add_child(location)
  end

  def update(data)
    title.text = data["title"]
    start_time.text = DateFormatter.format_date(data["start_time"])
    location.text = data.fetch("venue", {})["title"]
  end

  def title
    @title_label ||= build_standard_label(font_size: 18)
  end

  def start_time
    @start_time_label ||= build_standard_label
  end

  def location
    @location_label ||= build_standard_label
  end

  def build_standard_label(options = {})
    font_size = options[:font_size] || 12
    label = UI::Label.new
    font_name = ios? ? "Helvetica" : "Roboto-Regular"
    label.font = { name: font_name, size: font_size }
    label
  end
end
