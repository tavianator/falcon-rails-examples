class RecordEvents
  include Rack::Events::Abstract

  EVENTS = []

  def on_start(request, response)
    EVENTS << "on_start"
  end

  def on_finish(request, response)
    EVENTS << "on_finish"
  end
end
