class AboutUsPage < ApplicationRecord
  translates :title, :text

  def self.instance
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      row = AboutUsPage.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end
end
