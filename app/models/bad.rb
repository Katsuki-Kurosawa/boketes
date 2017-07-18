class Bad < ApplicationRecord
  belongs_to :answer, counter_cache: :bads_count
  belongs_to :user
end
