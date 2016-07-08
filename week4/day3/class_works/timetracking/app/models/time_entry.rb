class TimeEntry < ApplicationRecord
    belongs_to :project

    validates :date, presence: true

    validates :hours, presence: true,
                  numericality: true

    validates :minutes, presence: true,
                    numericality: true

    validates_associated :projects
end
