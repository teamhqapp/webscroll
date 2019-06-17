namespace :webscroll do

  task create_blog: :environment do
    halt_if_blog_exists

    STDOUT.puts "Enter Blog Name:"
    name = STDIN.gets.strip
    if name.size == 0
      puts "You didn't enter your blog's name. Why? Run this command again to create the blog"
      exit
    end

    blog = Blog.new(name: name)
    blog.save

    puts "Blog: #{blog.name} created. Happy Writing!!!"
  end

  task add_user: :environment do
    halt_if_no_blog
    puts "rake webscroll:add_user email first_name last_name [pen_name]"

    prep_argv

    a = Author.new email:  ARGV[1]
    a.first_name =  ARGV[2]
    a.last_name =  ARGV[3]
    a.pen_name =  ARGV[4] if ARGV[4]

    puts "Enter Password:"
    p = STDIN.gets.strip
    a.password = p
    a.save

    print_model_errors a
  end

  task update_author: :environment do
    halt_if_no_blog
    puts "rake webscroll:update_author email"

    prep_argv

    a = Author.find_by_email ARGV[1]
    puts "Enter New First Name:"
    a.update_attribute :first_name, STDIN.gets.strip
    puts "Enter New Last Name:"
    a.update_attribute :last_name, STDIN.gets.strip
    puts "Enter New Pen Name:"
    a.update_attribute :pen_name, STDIN.gets.strip
    puts "Enter New Email Address:"
    a.email = STDIN.gets.strip
    a.save

  end

end

def print_model_errors(model)
  if model != nil && model.errors.size > 0
    puts "Didn't work. See errors below:"
    puts model.errors.full_messages.join(" -- ")
  end
end

def halt_if_no_blog(msg = "Run rake webscroll:create_blog first.")
  if Blog.all.size == 0
    puts msg
    exit
  end
end

def halt_if_blog_exists(msg = "Blog exists already. Only one blog allowed.")
  if Blog.all.size == 1
    puts msg
    exit
  end
end

def prep_argv
  ARGV.each { |a| task a.to_sym do ; end }
end
