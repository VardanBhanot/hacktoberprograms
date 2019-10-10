class MoneyBox:

    '''Implementation and test case of MoneBox class 
    with given capacity 
    and possibilty to add certain amount of coins in it'''

    def __init__ (self, capacity):
        self.capacity = capacity
        self.coins = 0

    def can_add (self, v):
        #check if certain quantity of coins can be added
        if v + self.coins > self.capacity:
            return False
        else:
            return True

    def add (self, v):
        if self.can_add(v) is False:
        #if quantity cannot be added - skip function
            print(f'The capacity of money box is {self.capacity}')
            print(f'{v} coins cannot be added.')
            pass
        else:
            self.coins += v
            print(f'{self.coins} / {self.capacity}')

a = MoneyBox(50)
print(f'Money box capacity: {a.capacity}')
print(f'Current quantity of coins: {a.coins}')
print(a.can_add(10))
for trial in range(3):
    stack = 25
    a.add(stack)
