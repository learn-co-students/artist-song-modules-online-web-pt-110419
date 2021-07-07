module Paramable

module InstanceMethods
  def to_param
    name.downcase.gsub(' ', '-')
    # binding.pry
    #downcase replaces all capital letters in name variable with lower case letters and gsub scans name variable string and replaces ' ' with '-'
  end
end
end
