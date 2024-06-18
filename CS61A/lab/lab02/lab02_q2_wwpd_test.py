def cake():
    print('beets')
    def pie():
        print('sweets')
        return 'cake'
    return pie


print('>>> chocolate = cake()')
chocolate = cake()
print('------\n>>> chocolate')
chocolate
print('------\n>>> chocolate()')
chocolate()
print('------\n>>> more_chocolate, more_cake = chocolate(), cake')
more_chocolate, more_cake = chocolate(), cake
print('------\n>>> more_chocolate')
more_chocolate

def snake(x, y):
    if cake == more_cake:
        return chocolate
    else:
       return x + y
   
   
print('------\n>>> snake(10, 20)')
snake(10, 20)
print('------\n>>> snake(10, 20)()')
snake(10, 20)()