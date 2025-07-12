class Rack::Attack
  # IPアドレスベースの制限
  throttle('req/ip', limit: 10, period: 10.minute) do |req|
    req.ip
  end
end
