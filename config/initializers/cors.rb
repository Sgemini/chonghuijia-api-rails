Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if ENV['RACK_ENV'] == 'production'
      origins 'https://chonghuijia-react.herokuapp.com'
    else
      origins '*'
    end
    resource '*', headers: :any, methods: :any
  end
end