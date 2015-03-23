TestCase= class()

function TestCase:init()
end

function TestCase:assertEqual(expected, actual)
    if expected == actual then return end
    print ("expected ", expected," actual ", actual)
end

function TestCase:runTests(aClass)
    print("TestCase running tests")
    for klassName,klass in pairs(self.subclasses()) do
        print(klassName)
        local tests = self:getTestMethods(klass)
        for testName,test in pairs(tests) do
            -- print("   ", testName)
            local instance = klass()
            instance:setup()
            test(instance)
        end
    end
end

function TestCase:getTestMethods(aClass)
    local tests = {}
    local testNumber = 0
    for name, test in pairs(aClass) do
        local testIndex = string.find(name,"test")
        if testIndex == 1 then
            testNumber = testNumber + 1
            tests[name] = test
        end
    end
    return tests
end

function TestCase:subclasses()
    local t = {}
    for k,v in pairs(_G) do
        if type(v) == "table" and v._base and v._base == TestCase then
            t[k] = v
        end
    end
    return t
end
