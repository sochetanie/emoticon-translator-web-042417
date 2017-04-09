# require modules here
require 'yaml'

def load_library(file_path)
   # code goes here
   library = YAML.load_file(file_path)
   result = {"get_meaning" => {}, "get_emoticon" => {}}
   library.each do |key, value|
     result["get_meaning"][value[1]] = key
     result["get_emoticon"][value[0]] = value[1]
   end
   result
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
 	library = load_library(file_path)
 	result = library["get_emoticon"][emoticon]
 	if result
 		return result
 	else
 		"Sorry, that emoticon was not found"
 	end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
 	library = load_library(file_path)
 	result = library["get_meaning"][emoticon]
 	if result
 		result
 	else
 		"Sorry, that emoticon was not found"
 	end
end
