
class Trade < ApplicationRecord
  self.primary_key = "index"
  default_scope { order('date_buy ticker DESC') }
end
