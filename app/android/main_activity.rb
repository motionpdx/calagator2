def ios?; false; end
def android?; true; end

# class MainActivity < Android::App::Activity # FIXME: does not work with UI::Navigation
class MainActivity < Android::Support::V7::App::AppCompatActivity
  def onCreate(savedInstanceState)
    super
    UI.context = self
    events_screen = EventsScreen.new
    navigation = UI::Navigation.new(events_screen)
    flow_app = UI::Application.new(navigation, self)
    flow_app.start
  end
end
