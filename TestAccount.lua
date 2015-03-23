TestAccount = class(TestCase)

function TestAccount:init()
end

function TestAccount:setup()
end

function TestAccount:testInitialBalanceZero()
    local account = Account()
    self:assertEqual(0, account.balance())
end