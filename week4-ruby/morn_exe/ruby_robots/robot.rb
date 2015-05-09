require 'pry'
class Robot
  attr_accessor :name, :reboot_time
  attr_reader :mac
  def initialize print_name
    @name = generate_name
    @mac ||= generate_mac
    @birth ||= Time.now
    @reboot_time ||= ""
    @instruction_count ||= 0
    print_name.times { puts to_s }
  end

  def get_alphabets
    alphabets = ('a'..'z').to_a.sample
  end

  def get_numbers
    alphabets = ('0'..'9').to_a.sample
  end

  def generate_name
    name = []
    2.times { name << get_alphabets }
    3.times { name << get_numbers }

    # Method 2
    # name << ('aa'..'zz').to_a.sample
    # name << ('000'..'999').to_a.sample

    # Method 3
    # name << ('a'..'z').to_a.sample(2)
    # name << (0..9).to_a.sample(3)

    return name.join.upcase
  end

  def generate_mac
    mac = []
    6.times { mac.push get_alphabets + get_numbers }
    # array = array.each_slice(2).to_a # split array
    return mac.shuffle.join(":")
  end

  def timer
    @reboot_time = Time.now
  end

  def reset
    @instruction_count+=1
    puts "Resetting to factory settings."
    initialize 2
  end

  def to_s
    @instruction_count+=1
    @name
  end

end
