
puts "enter some text"
text = gets.chomp
puts "enter a number"
n = gets.chomp.to_i

 def chiffre_de_cesar(text, n)
  text = text.split("") #split permet de prendre séparament les donnés que l'on entre dans (text = gets.chomp) le ("") -> chaque lettre
  c = text.collect do  |x| 
 if x.ord >= 'a'.ord 
 return 97+((x.ord-97+n)%26) 
 end

  # --> en fonction du chiffre entré, modulo 26 (une solution apporté par un étudiant sur Odin Project)  
 if  x.ord > 'A'.ord 
 return  65+((x.ord-65+n)%26) 
 else 
  x.ord 

end

  d = c.collect do |x| x.chr  
  d.join() 
  end 
end


puts chiffre_de_cesar(text, n)