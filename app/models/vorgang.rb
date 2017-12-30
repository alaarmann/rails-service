class Vorgang < ApplicationRecord
  has_many :nachrichten, dependent: :destroy
  validates :referenz, presence: true,
                    length: { minimum: 5 }
end
