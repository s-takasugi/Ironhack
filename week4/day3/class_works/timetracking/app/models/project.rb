class Project < ApplicationRecord
    has_many :time_entries

    validates :name, presence: true
                  #  uniqueness: true,
                  #      length: { maximum: 30 },
                  #      format: { with: /\[a-zA-Z\s]/}
    validates_associated :time_entries

end
