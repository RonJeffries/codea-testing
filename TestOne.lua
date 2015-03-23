TestOne = class(TestCase)

function TestOne:init()
end

function TestOne:setup()
    print ("setup one")
end

function TestOne:testInOne()
    print ("test in one")
end

function TestOne:testAnother()
    print "another test in one"
end



