
#!/usr/bin/env perl

#  twitter-fortune-bot.pl
#  Author: @unixproject
#  ------------------------
#  Posts a fortune generated by the 'fortune' utility to Twitter
#  Uses the REST 1.1 API and requires OAuth.
#  Depends on Net::Twitter, and on the presence of the 'fortune' program.
#  ------------------------
#  This code is licensed by William Woodruff under the MIT License.
#  http://opensource.org/licenses/MIT


use Net::Twitter;
my $consumer_key =  "OdVjjb6iT4BGitt1cpU6GaJ0e",
my $consumer_secret = "2bVEcSIXB9xCjr1TpGt7U1dAap8Vnj8tvl7zUAKiECe97RFvjL",
my $token =  "1029254814-AA33foPEAJ1c6iOEY0tM7aTDWb2QPCXFC1KmYKn",
my $token_secret = "X6S9nZb94A5kcr5IsqJayVGzzusWyaSj1SvRsdGn7jWs7",

my $twitter = Net::Twitter->new(traits => [qw/API::RESTv1_1/], 
consumer_key => "OdVjjb6iT4BGitt1cpU6GaJ0e", 
consumer_secret => "2bVEcSIXB9xCjr1TpGt7U1dAap8Vnj8tvl7zUAKiECe97RFvjL", 
access_token => "1029254814-AA33foPEAJ1c6iOEY0tM7aTDWb2QPCXFC1KmYKn", 
access_token_secret => "X6S9nZb94A5kcr5IsqJayVGzzusWyaSj1SvRsdGn7jWs7",
ssl => 1);

my $fortune = `fortune XXXXX -n 140`;
my $result = $twitter->update($fortune);
