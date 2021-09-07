# validation inclusion
# https://railsguides.jp/active_record_validations.html#inclusion
class StatusClass < ApplicationRecord
  STATUS_LIST = %w[draft published deleted].freeze
  validates :status, inclusion: { in: STATUS_VALUES }
end