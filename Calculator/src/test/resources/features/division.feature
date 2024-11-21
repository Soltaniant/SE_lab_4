Feature: Division Operation
  As a user
  I want to divide two numbers
  So that I can calculate the quotient

  Scenario Outline: Dividing two numbers
    Given the calculator is initialized
    When I input the operands <operand1> and <operand2> and the operator "/"
    Then the result should be <expectedResult>

    Examples:
      | operand1    | operand2    | expectedResult   | Comment                                           |
      | 10          | 5           | 2.0             | Basic division of positive integers                |
      | -10         | -5          | 2.0             | Division of two negative integers                  |
      | -10         | 5           | -2.0            | Division of negative by positive                   |
      | 10          | -5          | -2.0            | Division of positive by negative                   |
      | 0           | 5           | 0.0             | Division of zero by a positive number              |
      | 0           | -5          | 0.0             | Division of zero by a negative number              |
      | 3.5         | 2.5         | 1.4             | Division of two floating-point numbers             |
      | -3.5        | -2.5        | 1.4             | Division of two negative floating-point numbers    |
      | -3.5        | 2.5         | -1.4            | Division of negative by positive float             |
      | 1.0E10      | 2.0         | 5.0E9           | Division with large numbers (scientific notation)  |
      | -1.0E10     | 2.0         | -5.0E9          | Division of large positive by negative             |
      | 3.0E-2      | 1.0E-2      | 3.0             | Division with small numbers in scientific notation |
      | 5           | 1           | 5.0             | Division by one                                    |
      | 1           | 5           | 0.2             | Division of smaller by larger number               |

  # Negative test cases
  Scenario Outline: Division by zero
    Given the calculator is initialized
    When I input the operands <operand1> and <operand2> and the operator "/"
    Then an error should occur with message "Division by zero is not allowed"

    Examples:
      | operand1    | operand2 |
      | 5           | 0        |
      | -5          | 0        |
      | 0           | 0        |
