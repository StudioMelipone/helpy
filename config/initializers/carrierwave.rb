CarrierWave.configure do |config|
  if Settings.carrierwave.storage == :fog
    config.fog_credentials = {
      provider:               'AWS',
      aws_access_key_id:      Settings.s3.access_key,
      aws_secret_access_key:  Settings.s3.secret_key,
      region: 'eu-west-1'
    }
    config.fog_directory = Settings.s3.bucket
  end
  config.storage = Settings.carrierwave.storage
end
