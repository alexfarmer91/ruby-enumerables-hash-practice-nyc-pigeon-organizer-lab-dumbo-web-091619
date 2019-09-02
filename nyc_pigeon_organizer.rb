
$organized_pigeons = {}

def nyc_pigeon_organizer(data)
  
  
  pigeon_names = data[:gender][:male]|data[:gender][:female] #7
  male_pigeons = data[:gender][:male] #5
  female_pigeons = data[:gender][:female] #2
  pigeon_color_symbols = [:brown, :black, :purple, :grey, :white] #5
  pigeon_colors = pigeon_color_symbols.map { |n| n = "#{n}" } #5
  pigeon_homes = data[:lives].keys #4
  
  #first lets set up our hash
  i = 0 
  while pigeon_names.length > i do 
    pigeon_names.each { |n|
     $organized_pigeons.merge!({n => { :color => [],
       :gender => [],
       :lives => []}} )}
       i += 1 
   end #this works, yay
  
  #now lets fill it in 
  #starting with colors
  c = 0
  while pigeon_color_symbols.length > c do 
  
    case data[:color].keys[c]
    
    when :black
      black_pigeons = data[:color][:black]
      black_pigeons.each { |n|
      $organized_pigeons[n][:color].push("black") }
      c += 1
    
    when :purple
      purple_pigeons = data[:color][:purple]
      purple_pigeons.each { |n|
      $organized_pigeons[n][:color].push("purple") }
      c += 1
      
    when :grey
      grey_pigeons = data[:color][:grey]
      grey_pigeons.each { |n|
      $organized_pigeons[n][:color].push("grey") }
      c += 1
      
    when :white
      white_pigeons = data[:color][:white]
      white_pigeons.each { |n|
      $organized_pigeons[n][:color].push("white") }      
      c += 1
      
    when :brown
      brown_pigeons = data[:color][:brown]
      brown_pigeons.each { |n|
      $organized_pigeons[n][:color].push("brown") }      
      c += 1
      break
  end 

end

 #now lets establish gender 
  g = 0
  while 2 > g do 
  
    case data[:gender].keys[g]
    
    when :male

      male_pigeons.each { |n|
      $organized_pigeons[n][:gender].push("male") }
      g += 1
      
    when :female
      female_pigeons.each { |n|
      $organized_pigeons[n][:gender].push("female") }
      g += 1
      
      break
  end 

end

#now lets do homes
l = 0
  while pigeon_homes.length > l do 
  
    case data[:lives].keys[l]
    
    when "Subway"
      subway_pigeons = data[:lives]["Subway"]
      subway_pigeons.each { |n|
      $organized_pigeons[n][:lives].push("Subway") }
      l += 1
      
    when "Central Park"
      central_park_pigeons = data[:lives]["Central Park"]
      central_park_pigeons.each { |n|
      $organized_pigeons[n][:lives].push("Central Park") }
      l += 1
      
    when "Library"
      library_pigeons = data[:lives]["Library"]
      library_pigeons.each { |n|
      $organized_pigeons[n][:lives].push("Library") }
      l += 1
      
    when "City Hall"
      city_hall_pigeons = data[:lives]["City Hall"]
      city_hall_pigeons.each { |n|
      $organized_pigeons[n][:lives].push("City Hall") }
      l += 1
      
      
      
      break
  end 

end


p $organized_pigeons
end