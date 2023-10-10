require_relative 'library_app'

def main
  app = LibraryApp.new
  app.load_data
  app.run
end

main
