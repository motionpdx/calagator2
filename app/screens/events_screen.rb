class EventsScreen < UI::Screen
  def on_load
    navigation.title = "Calagator"

    view.add_child(EventsList.new)
    view.update_layout
  end
end
