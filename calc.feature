Feature: window Calculator

Scenario Outline: automate the addition, subtraction, multiplication and division of any two given number.
    * def num1 = 'Six'
    * def num2 = 'Two'
    * robot { window: 'Calculator', fork: 'calc' }
    * click('Clear')
    * click(num1)
    * click(<operation>)
    * click(num2)
    * click('Equals')
    * match locate('#CalculatorResults').name == 'Display is <result>'
    # * if (<operation> == 'Plus') match locate('#CalculatorResults').name == 'Display is 8'
    # * if (<operation> == 'Minus') match locate('#CalculatorResults').name == 'Display is 4'
    # * if (<operation> == 'Multiply by') match locate('#CalculatorResults').name == 'Display is 12'
    # * if (<operation> == 'Divide by') match locate('#CalculatorResults').name == 'Display is 3'
    * screenshot()
    * click('Close Calculator')

    Examples:
    |  operation       | result |
    |  'Plus'          |   8    |
    |  'Minus'         |   4    |
    |  'Multiply by'   |   12   |
    |  'Divide by'     |   3    |

