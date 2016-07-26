class EventsList < UI::List
  def initialize
    super
    self.flex = 1
    render_row do
      EventRow
    end
    load_events
  end

  def load_events
    Event.fetch_all do |events|
      self.data_source = events
    end
  end
end
