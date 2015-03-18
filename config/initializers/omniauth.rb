OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '827414928786-kpu4lhh2h89aou5v7sdfc1gghdn3c9e3.apps.googleusercontent.com', 'ZUHdr7rgENI7xbb5fP4GtwKa', 
  {
    client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}
  }
end
