def is_multiple_of_3_or_5?(number)
  #ternary to check if "number" is multiple of 3 or 5
  return number % 3 == 0 || number % 5 == 0 ? true : false
  
end

def sum_of_3_or_5_multiples(final_number)

  return "Error!" if final_number.class.to_s != 'Integer'

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  for current_number in 0...final_number
    # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

      if is_multiple_of_3_or_5?(current_number)
        # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
        final_sum += current_number
      end
    
  end #Ici, positionne la fin de la boucle

  return final_sum #on retourne la variable qui contient la somme du tout
end

#puts sum_of_3_or_5_multiples(11) #=> 33
#puts sum_of_3_or_5_multiples(10) #=> 23
