#About
Example Rails 3.1. app for the very barebones fbgraph ruby gem by nsanta
https://github.com/nsanta/fbgraph/tree/master/lib/fbgraph
Forked from the fbgraph_example by nsanta
https://github.com/nsanta/fbgraph_example

#Known Issues

Query on people, places, and checkin returns error.

##People

{"utf8"=>"✓",
 "authenticity_token"=>"IsWyskRxbGWb2nJPHwYSOvfPWA3w9V2Wci290TCD0DQ=",
 "q"=>"mark",
 "on"=>"user",
 "commit"=>"search"}

400 Bad Request
app/controllers/search_controller.rb:7:in `create'

RestClient::BadRequest in SearchController#create

##Place

{"utf8"=>"✓",
 "authenticity_token"=>"IsWyskRxbGWb2nJPHwYSOvfPWA3w9V2Wci290TCD0DQ=",
 "q"=>"coffee",
 "on"=>"place",
 "commit"=>"search"}

400 Bad Request
app/controllers/search_controller.rb:7:in `create'

RestClient::BadRequest in SearchController#create


##Checkins

{"utf8"=>"✓",
 "authenticity_token"=>"IsWyskRxbGWb2nJPHwYSOvfPWA3w9V2Wci290TCD0DQ=",
 "q"=>"",
 "on"=>"checkin",
 "commit"=>"search"}

500 Internal Server Error
app/controllers/search_controller.rb:7:in `create'

RestClient::InternalServerError in SearchController#create

