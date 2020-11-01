require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}

  data.each do |attribute, inner_att|
    inner_att.each do |inner, pigeons|
      pigeons.each do |pigeon|  
        if !new_data[pigeon]
          new_data[pigeon] = {}
        end
        if !new_data[pigeon][attribute]
          new_data[pigeon][attribute] = []
        end 
        new_data[pigeon][attribute].push(inner.to_s)
      end   
    end
  end
  new_data
end
