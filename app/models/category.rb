class Category < ActiveResource::Base
  self.site = Rails.configuration.resource_base_url + "/categories.php"

  def meals
    category = self.as_json["strCategory"]
    Meal.where(c: category)
  end
end