class Cheese < ApplicationRecord
    def summary
        "id:#{self.id} #{self.name}: $#{self.price}"
    end
end
