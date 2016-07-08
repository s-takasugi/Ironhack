class Project < ApplicationRecord
    has_many :time_entries

    validates :name, presence: true,
                   uniqueness: true,
                       length: { maximum: 30 },
                       format: { with: /\[a-zA-Z\s]/}
    validates_associated :time_entries

    # class << self
    #   def clean_old
    #   end
    # end

    def self.clean_old
      projects = Project.where('created_at < ?', 1.week.ago)

      projects.destroy_all
    end

end
