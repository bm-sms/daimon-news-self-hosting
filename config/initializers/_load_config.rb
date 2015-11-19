config = Rails.application.config_for(:application)
required_keys = %w(site_title)

missing_keys = required_keys - config.keys

unless missing_keys.empty?
  raise "Missing keys: `#{missing_keys}`"
end

Rails.application.config.daimon = ActiveSupport::OrderedOptions.new

config.each do |key, value|
  Rails.application.config.daimon[key] = value
end
