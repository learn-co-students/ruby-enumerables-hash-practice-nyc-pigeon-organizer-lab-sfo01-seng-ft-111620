def nyc_pigeon_organizer(data)
  new_pigeon_data = Hash.new
  data.each do |data_type, data_type_option|
    data_type_option.each do |data_type_option, names|
      names.each do |name|
        if !new_pigeon_data.include?(name)
          new_pigeon_data[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
        end
        if data[data_type][data_type_option].include?(name)
          new_pigeon_data[name][data_type] << data_type_option.to_s
        end
      end
    end
  end
  new_pigeon_data
end
