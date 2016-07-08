require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "#clean_old removes projects older than one week ago" do
    old_project = Project.create(name: 'test',
                            description: 'testsas')
    old_project.created_at = 2.years.ago
    old_project.save

    new_project = Project.create(name: 'so fresh',
                            description: 'this week')

# call our delete_old method
    Project.clean_old

    assert_equal new_project, Project.first

  end
  # test "the truth" do
  #   assert true
  # end
end
