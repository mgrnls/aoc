rawInput: read0 `d21.txt;                                                          
                                                                                   
/ part one                                                                         
parsed: " (contains " vs/: -1 _' rawInput;                                         
allergens: distinct raze lists: ` $ ", " vs/: last each parsed;                    
ingredients: distinct raze foods: ` $ " " vs/: first each parsed;                  
maybe: allergens ! {(inter/) foods where x in/: lists} each allergens;             
reduce: {[solved]                                                                  
  removed: ((key solved) _ maybe) except\: raze value solved;                      
  solved , (where 1 = count each removed) # first each removed};                   
allergenMap: {(count x) < count allergens} reduce/ () ! ();                        
good: (distinct raze foods) except value allergenMap;                              
partOne: sum (raze foods) in good;                                                 
                                                                                   
/ part two                                                                         
partTwo: "," sv string allergenMap asc key allergenMap;                            
                                                                                   
show (partOne; partTwo);
