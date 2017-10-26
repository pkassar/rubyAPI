students = [ { name: "Mary Jones", test_score: 80, sport: "soccer" },
             { name: "Bob Kelly", test_score: 95, sport: "basketball" },
             { name: "Kate Saunders", test_score: 99, sport: "hockey" },
             { name: "Pete Dunst", test_score: 88, sport: "football" },
             { name: "Ima Hogg", test_score: 99, sport: "darts" }]

max_score = students.max_by { |h| h[:test_score] }[:test_score]
star_students = students.select { |h| h[:test_score] == max_score }.map { |h| h[:name] }

puts star_students
