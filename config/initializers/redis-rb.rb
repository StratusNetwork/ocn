REDIS_HOST = ENV['REDIS_HOST'] || 'localhost'

options = {
    'production'    => { host: REDIS_HOST },
    'staging'       => { host: REDIS_HOST },
    'development'   => { host: REDIS_HOST },
}

REDIS = Redis.new(options[Rails.env])
