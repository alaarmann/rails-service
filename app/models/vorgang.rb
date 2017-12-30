class Vorgang < ApplicationRecord
  has_many :nachrichten
  validates :referenz, presence: true,
                    length: { minimum: 5 }
end
