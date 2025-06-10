Resque.redis = Redis.new(
  url: ENV["REDIS_URL"],
  thread_safe: true
)

if ENV["RESQUE_NAMESPACE"].present?
  Resque.redis.namespace = ENV["RESQUE_NAMESPACE"].to_sym
end
