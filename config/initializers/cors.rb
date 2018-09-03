Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if ENV['RACK_ENV'] == 'production'
      origins ENV['CHJ_DOMAIN']
    else
      origins '*'
    end
    resource '*', headers: :any, methods: :any
  end
end