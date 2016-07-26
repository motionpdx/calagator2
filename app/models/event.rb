class Event
  def self.fetch_all(&block)
    Net.get "http://calagator.org/events.json" do |response|
      if response.status == 200
        block.call(response.body)
      else
        block.call(nil)
      end
    end
  end
end
