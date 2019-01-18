require 'io/console'

def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end
check_if_user_gave_input
def get_folder_name
  # creation of the folder
  create_file = ARGV.first
  Dir.mkdir(create_file)
  Dir.chdir("#{create_file}")
  # creation of the lib folder
  Dir.mkdir("lib")
  # creation of app_file
  Dir.chdir("lib")
  app = File.open("app.rb", "a")
  app.puts("puts \"#{create_file}")
  app.close
  # change directory into create_file
  Dir.chdir("..")
  # creation of .env
  env = File.open(".env", "a")
  env.puts("OUR_KEY=\"...")
  env.close
  # creation of .gitignore
  gitignore = File.open(".gitignore", "a")
  gitignore.puts(".env")
  gitignore.close
  # creation of README.md
  readme = File.open("README.md", "a")
  readme.puts("#{create_file}")
  # initialisation of git
  system("git init")
  # creation of Gemfile
    file = File.open("Gemfile", "a")
    file.puts("source 'https://rubygems.org'")
    file.puts("ruby '2.5.1'")
    file.puts("gem 'pry'")
    file.puts("gem 'rubocop'")
    file.puts("gem 'rspec'")
    file.puts("gem 'dotenv'")
    file.puts("gem 'twitter'")
    file.puts("gem 'nokogiri'")
    file.puts("gem 'launchy'")
    file.puts("gem 'watir'")
    file.puts("gem 'selenium-webdriver'")
    file.close
   # install the bundle and rspec
    system("rspec --init")
    system("bundle install")
    puts("You have succesfully install the directory: #{create_file}")
end
get_folder_name
