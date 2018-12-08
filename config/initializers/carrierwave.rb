# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     Rails.application.secrets.s3_credentials["access_key_id"],
#     aws_secret_access_key: Rails.application.secrets.s3_credentials["secret_access_key"],
#     region:                'sa-east-1',
#   }
#   config.fog_directory  = Rails.application.secrets.s3_credentials["bucket"]
#   config.fog_public     = true
#   config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
#
#   if Rails.env.test? || Rails.env.cucumber?
#     config.storage = :file
#     config.enable_processing = false
#     config.root = "#{Rails.root}/tmp"
#   else
#     config.storage = :fog
#   end
# end