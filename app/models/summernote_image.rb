# frozen_string_literal: true

class SummernoteImage < ApplicationRecord
  mount_uploader :file, ImageUploader
end
