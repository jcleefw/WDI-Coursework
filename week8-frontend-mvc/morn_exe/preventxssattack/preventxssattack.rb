require 'pry'

def convert input

  special_char = {'&' => '&amp;',
  '<' => '&lt;',
  '>' => '&gt;',
  '"' => '&quot;',
  "'" => '&#x27;',
  '/' => '&#x2F;'}

  deconversion = check_for_deconversion input, special_char
  special_char.each do | key, replacement|

    if deconversion.include? key
      #binding.pry
      deconversion = deconversion.gsub(key, replacement)
    end
  end
  return deconversion
end


def check_for_deconversion input, special_char
  special_char.each do | key, replacement|
    if input.include? replacement
      input = input.gsub(replacement, key)
    end
  end
  return input
end


puts "Output #{convert('is z > 0 && z < 10?')}"
puts "Output #{convert('<script>alert("error")</script>')}"
puts "Output #{convert('&lt;&lt; Accept & Checkout')}"