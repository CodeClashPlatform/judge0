if ENV["REDIS_URL"].present?
  Resque.redis = Redis.new(url: ENV["REDIS_URL"], thread_safe: true)
else
  Resque.redis = Redis.new(
    host:     ENV["REDIS_HOST"],
    port:     ENV["REDIS_PORT"],
    password: ENV["REDIS_PASSWORD"],
    thread_safe: true
  )
end

if ENV["RESQUE_NAMESPACE"].present?
  Resque.redis.namespace = ENV["RESQUE_NAMESPACE"].to_sym
end
