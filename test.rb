require_relative 'lib/app.rb'

app = App.new

p "app.total_spend('terry_henry@doyle.io')"
p app.total_spend('terry_henry@doyle.io')

p "app.average_spend('terry_henry@doyle.io')"
p app.average_spend('terry_henry@doyle.io')

p "app.most_loyal"
p app.most_loyal

p "app.most_sold"
p app.most_sold
