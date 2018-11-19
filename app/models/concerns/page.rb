module Page
  extend ActiveSupport::Concern

  included do
    validates_inclusion_of :singleton_guard, in: [0]
  end

  module ClassMethods
    def instance
      begin
        find(1)
      rescue ActiveRecord::RecordNotFound
        create(singleton_guard: 0)
      end
    end
  end
end
