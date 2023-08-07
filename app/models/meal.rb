class Meal < ActiveResource::Base
  self.site = Rails.configuration.resource_base_url + "/filter.php?c=:category"
end