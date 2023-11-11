namespace :db do
  task :rebuild, [] => :environment do
    raise "Not allowed to run on production" if Rails.env.production?

    puts "======================="
    puts "creating database"
    puts "======================="

    `rails db:drop db:create db:schema:load db:fixtures:load`

    puts "======================="
    puts "created database"
    puts "======================="
  end
end
