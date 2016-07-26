def ios?; true; end
def android?; false; end

class AppDelegate
  attr_accessor :window # required by UI::Application

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    events_screen = EventsScreen.new
    navigation = UI::Navigation.new(events_screen)
    flow_app = UI::Application.new(navigation, self)
    flow_app.start
  end
end
