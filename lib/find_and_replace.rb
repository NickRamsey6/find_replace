require('pry')

class String
  def find_and_replace(currentWord, replacementWord)
    regex = Regexp.new(currentWord, "i")
    gsub(regex, replacementWord)
  end
  def file_stuff(replacementWord)
    file = File.open("lib/read.txt")
    file_data = file.read
    file.close
    out_file = File.open("lib/read.txt", "w")
    out_file.puts(file_data.chomp.find_and_replace(self, replacementWord))
    out_file.close
  end
end
p "Please enter the word you want to replace. Press enter. Then type the word you want it to be replaced by followed by pressing enter again to run the program."
gets.chomp.file_stuff(gets.chomp)
