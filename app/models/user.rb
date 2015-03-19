require 'pp'
class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    u = where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.image = auth.info.image
      user.creation_date = Time.now
      user.save!
    end
  end
end