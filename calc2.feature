Feature: window Calculator

Background: Open calculator
    * robot { window: 'Calculator', fork: 'calc' }
    * def num1 = 'Six'
    * def num2 = 'Two'

Scenario Outline: Automate the addition, subtraction, multiplication and division of two given number.
    * click('Clear')
    * click(num1)
    * click(<operation>)
    * click(num2)
    * click('Equals')
    * match locate('#CalculatorResults').name == 'Display is <result>'
    * screenshot()


    Examples:
    |  operation       | result |
    |  'Plus'          |   8    |
    |  'Minus'         |   4    |
    |  'Multiply by'   |   12   |
    |  'Divide by'     |   3    |

Scenario: Close Calculator
    * click('Close Calculator')
