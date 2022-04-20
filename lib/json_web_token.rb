class JsonWebToken
  SECRET_KEY = "6f045a75407b528ef85b2e8a959ffe58f01e2585092e8d9162a6c7eeb26ffea597b5e4a1ed4294400ae63a143b6a43b1bc31e1dc5515837b38fd5f77476c2860"

  def self.expiry_time
    24.hours.from_now
  end

  def self.refresh_expiry_time
    3.days.from_now
  end

  def self.encode(payload, expiration = self.expiry_time )

    payload[:exp] = expiration.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end