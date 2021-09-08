# validation inclusion
# https://railsguides.jp/active_record_validations.html#inclusion
class StatusClass < ApplicationRecord
  STATUS_LIST = %w[draft published deleted].freeze
  validates :status, inclusion: { in: STATUS_VALUES }
end


# @see: https://qiita.com/yagince/items/cfb131db58190d0ebb7b
# @see: https://mikanmarusan.hatenablog.com/entry/2017/12/28/124049
def hoge_fug
  ATTRIBUTES_LIST = %w[hoge fuga piyo].freeze
  attr = attributes.slice(*ATTRIBUTES_LIST).merge(
    hoge_str: :hoge_new,
    fuga_int: :fuga_new,
  )
end
