class Vorgang < ApplicationRecord
  validates :referenz, presence: true,
                    length: { minimum: 5 }
end
