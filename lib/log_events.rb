class LogEvents
  include Rack::Events::Abstract

  def on_start(request, response)
    Rails.logger.info("on_start")
  end

  def on_finish(request, response)
    Rails.logger.info("on_finish")
  end
end
