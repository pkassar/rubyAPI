#DRIFT RUBY API:
IRB interactive ruby program that can answer questions about data held in API.
https://driftrock-dev-test-2.herokuapp.com/

There are two endpoints on this API, one for the customer information and one with a list of transactions. Both endpoints contained a section called user_id that allowed me to cross reference them.

After playing around with the data I realised that maxing out the number of entries to be displayed in the url allowed to have it all on one page.

I therefore used the two following url's to get the data:
https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=50000&page=1
https://driftrock-dev-test-2.herokuapp.com/users?per_page=50000&page=1

in there I used the gems rest-client a simple HTTP and REST client for Ruby. And json parser to read the data.

To run the app try running the test.rb file; those are the of the four main commands of my code irb:

total_spend(email)
to find the sum of all spendings associated to a specific email address

average_spend(email)
to find the average spend of user with the associated email address

most_loyal
will give you the email address of the customer with the most amount of transactions in the data

most_sold
will give you the most commonly sold item in the data.


--------------------------------


Note:
I used rspec to create tests for the 4 main methods of my project. In order to test the methods I created a mockApi class that loads data from two separate JSON files(fakepurchasesAPI and fakeusersAPI). I did this to test the methods for how they handle data rather than test the drifrock API. The two files contain hashes in the same structure as the drifrock API.
