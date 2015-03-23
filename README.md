# codea-testing

## Experimental Codea testing framework

This is an attempt to use Codea to build a TestCase class which other classes can subclass, to provide a rudimentary unit testing capability like sUnit or JUnit or the like. I'm posting it now because @jakesankey has done a nice little unit testing framework, and I thought what I have here might be useful to him.

The framework just supports two testing-related methods, `setup()` and `assertEquals()`, which were enough to let me determine that it worked. It should be straightforward to add other asserts and a teardown() method. Similarly if one wanted `setupClass()` and `teardownClass()`, they should be readily placed into the runTests loop.

I have no particular reason to believe that the code here is good Codea style and am open to suggestions on how to make it better in that regard. 

At the time that I wrote this, it seemed necessary to put the TestCase class's tab to the left of everything else, so that TestCase would be defined properly before use. I've not been using Codea much since I wrote this, and there may be a better way to accomplish that now.

That's all I've got for now. Communications welcome ...


