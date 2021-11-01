
class Calculator:
    def __init__(self):
        Calculator.main(self)

    def main(self):
        cnt = 0
        store = {}
        while True:
            print('\n-------- Calculator --------')
            view_store = input('Do you want see the store operations? [y/n]')
            if view_store == 'y':
                print('{}\n'.format(store))
            print('Type:')
            print('Operation [1/2/3/4/5/6/q] (Sum/Subtraction/Division/Multiplication/Pow/Sqrt/Quit)')
            get_operation = str(input('Operation:'))
            if get_operation == '6':
                num1 = float(input('Type first number:'))
            elif get_operation.lower() == 'q':
                break
            else:
                num1 = float(input('Type first number:'))
                num2 = float(input('Type second number'))

            if get_operation == '1':
                result = Calculator.Sum(self, num1, num2)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {} num2 {}'.format(get_operation, num1,num2)] = result
            if get_operation == '2':
                result = Calculator.Subtraction(self, num1, num2)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {} num2 {}'.format(get_operation, num1,num2)] = result
            if get_operation == '3':
                result = Calculator.Division(self, num1, num2)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {} num2 {}'.format(get_operation, num1,num2)] = result
            if get_operation == '4':
                result = Calculator.Multiplication(self, num1, num2)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {} num2 {}'.format(get_operation, num1,num2)] = result
            if get_operation == '5':
                result = Calculator.Pow(self, num1, num2)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {} num2 {}'.format(get_operation, num1,num2)] = result
            if get_operation == '6':
                result = Calculator.Sqrt(self, num1)
                print('Result: {}\n'.format(result))
                store['Operation {}, num1 {}'.format(get_operation, num1)] = result

            cnt += 1

    def Sum(self, a, b):
        return a+b 
    
    def Subtraction(self, a, b):
        return a-b
    
    def Division(self, a, b):
        if a/b != 0:
            return a/b
        else:
            print('Division by zero.')

    def Multiplication(self, a,b):
        return a*b
    
    def Pow(self, a, b):
        return a**b
    
    def Sqrt(self, a):
        return (a)**(1/2)

Calculator()