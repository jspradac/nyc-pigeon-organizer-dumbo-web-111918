def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, stats|
    stats.each do |stat, names|
      names.each do |name|
        if !((pigeon_list.keys).include?(name))
          pigeon_list[name] = {category => ["#{stat}"]}
        else 
          if (pigeon_list[name].keys).include?(category)
            pigeon_list[name][category] << "#{stat}"
          else 
            pigeon_list[name][category] = ["#{stat}"]
          end 
        end 
      end 
    end 
  end 
  pigeon_list
end