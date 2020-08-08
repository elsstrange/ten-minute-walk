* I was a bit perplexed by trying to describe a domain for this exercise, since the acceptance criteria were presented virtually in the form of tests, and the tests used the regular Ruby array object, and a stand alone function.
* During refactoring, I found myself puzzling over my variable naming, where I had a variable and a method sharing a name. This felt potentially unclear for anyone coming into the code, so I fudged an alternative variable name.
* I did a little reading about naming afterwards, and realised that there were a few better options:
  * Add a verb into the method name (`direction_log = make_direction_log(walk)`)
  * Since my method existed to convert one object (an array) into another object (a hash) with a very specific set up (NSEW keys) in order to call some other functions on it, I could have written a class instead (`direction_log = DirectionLog.new`)
  * Doing this would have allowed many of my functions to become methods of the DirectionLog class, which could have further improved readability.
  * But I'm not sure how I could have got to that idea at the start of the exercise, rather than at the refactoring stage.
* It would be good to add into my test framework the ability to group tests, so that similar tests with different set-up scenarios could be clearly gathered.
