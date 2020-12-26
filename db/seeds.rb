# frozen_string_literal: true

# Destruction of former entries
################################################################
puts 'Destroying former DB entries...'.colorize(:light_blue)

Task.destroy_all
puts '  - Tasks destroyed'.colorize(:light_green)

Column.destroy_all
puts '  - Columns destroyed'.colorize(:light_green)

BoardMembership.destroy_all
puts '  - Board Memberships destroyed'.colorize(:light_green)

Board.destroy_all
puts '  - Boards destroyed'.colorize(:light_green)

User.destroy_all
puts '  - Users destroyed'.colorize(:light_green)

# User creation
################################################################
puts "\nCreating Users...".colorize(:light_blue)

users = [
  {
    email: 'lomig@hey.com',
    password: '12345678'
  },
  {
    email: 'dunwael@gmail.com',
    password: '12345678'
  },
  {
    email: 'mail@mail.com',
    password: '12345678'
  }
]

users.each do |user|
  User.create!(user)
  puts "  - User #{user[:email]} created".colorize(:light_green)
end

# Board creation
################################################################
puts "\nCreating Boards...".colorize(:light_blue)

boards = [
  {
    name: 'Trello Clone Project',
    owner: User.first
  },
  {
    name: 'Another Splendid Board',
    owner: User.first
  }
]

boards.each do |board|
  Board.create!(board)
  puts "  - Board #{board[:name]} created".colorize(:light_green)
end

# Column creation
################################################################
puts "\nCreating Columns...".colorize(:light_blue)

columns = [
  {
    name: 'To Do',
    position: 1,
    board: Board.first
  },
  {
    name: 'Doing',
    position: 2,
    board: Board.first
  },
  {
    name: 'Done',
    position: 3,
    board: Board.first
  }
]

columns.each do |column|
  Column.create!(column)
  puts "  - Column #{column[:name]} created".colorize(:light_green)
end

# Task creation
################################################################
puts "\nCreating Tasks...".colorize(:light_blue)

tasks = [
  {
    name: 'Backend',
    position: 1,
    column: Column.first
  },
  {
    name: 'Frontend',
    position: 2,
    column: Column.first
  },
  {
    name: 'DB',
    position: 1,
    column: Column.last
  },
  {
    name: 'Design',
    position: 3,
    column: Column.first
  }
]

tasks.each do |task|
  Task.create!(task)
  puts "  - Task #{task[:name]} created".colorize(:light_green)
end
