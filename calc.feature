Feature: window Calculator

Scenario:
    * robot { window: 'Calculator', fork: 'calc' }
    * click('Clear')
    * click('One')
    * click('Multiply by')
    * click('Nine')
    * click('Equals')
    * match locate('#CalculatorResults').name == 'Display is 9'
    * screenshot()
    * click('Close Calculator')
