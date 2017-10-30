#DRIFT RUBY API
IRB interactive ruby program that can answer questions about data held in API.
https://driftrock-dev-test-2.herokuapp.com/

There are two endpoints on this API, one for the customer information and one with a list of transactions. Both endpoints contained a section called user_id that allowed me to cross reference both.

After playing around with the data I realised that maxing out the number of entries to be displayed in the url allowed to bypass the paginated problem and have it all on one page.

I therefore used the two following url's to get the data:
https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=50000&page=1
https://driftrock-dev-test-2.herokuapp.com/users?per_page=50000&page=1

To run the app try:

total_spend(email)
to find the sum of all spendings associated to a specific email address

average_spend(email)
to find the average spend of user with the associated email address

most_loyal
will give you the email address of the customer with the most amount of transactions in the data

most_sold
will give you the most commonly sold item in the data




{"data":[
{"id": "1",
"first_name": "Paul",
"last_name": "Homenick",
"phone": "555554",
"email": "homenick@cmail.com"
},
{
"id": "2",
"first_name": "Jamison",
"last_name": "Ebert",
"phone": "55556",
"email": "je@bmail.com"
},
{"id": "3",
"first_name": "Alison",
"last_name": "Nick",
"phone": "666644",
"email": "alin@bmail.com"
},
{
"id": "4",
"first_name": "Dunder",
"last_name": "Mifflin",
"phone": "666633",
"email": "Dunder@mifflin.net"
}]}
