array = [
  {:name => "bob", :type => "some", :product => "apples"},
  {:name => "ted", :type => "other", :product => "apples"},
  {:name => "Will", :type => "none", :product => "oranges"}
]

p array.each_with_object(Hash.new(0)) { |h1, h2| h2[h1[:users]] += 1 }
