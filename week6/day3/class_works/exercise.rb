User.find_by(name: 'Charlie')

Task.where(user_id: 3)

user = User.find(3)
Task.create(name: 'Race a cheetah', user: user)

my_task = Task.find_by(name: 'Race a cheetah')
my_task.update(name: 'Race a giraffe')

my_task = Task.where(user_id: 1)
my_task.destroy

my_user = User.find(3)
my_user.location

# Bonus

Task.where(user_id: User.find_by(name: 'Bob').id)
User.find_by(name: 'Bob').tasks

spain = User.where(location: 'Spain')
spain.each { |user| user.tasks.destroy_all }

Task.where(user_id: User.where(location: 'Spain')).destroy_all
