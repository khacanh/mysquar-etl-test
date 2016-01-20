Rails.application.configure do
  config.lograge.enabled = true
  config.lograge.formatter = Lograge::Formatters::Json.new
  config.lograge.custom_options = lambda do |event|
    {
      time: event.time,
      user_agent: event.payload[:user_agent],
      params: event.payload[:params]
    }
  end
end

