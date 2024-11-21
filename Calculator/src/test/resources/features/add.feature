Feature: Addition Operation
  As a user
  I want to add two numbers
  So that I can calculate their sum

  Scenario Outline: Adding two numbers
    Given the calculator is initialized
    When I input the operands <operand1> and <operand2> and the operator "+"
    Then the result should be <expectedResult>

    Examples:
      | operand1    | operand2    | expectedResult  | Comment                                     |
      | 5           | 3           | 8               | Basic addition of positive integers         |
      | -5          | -3          | -8              | Addition of two negative integers           |
      | -5          | 3           | -2              | Addition of a negative and positive integer |
      | 0           | 0           | 0               | Adding zero to zero                         |
      | 0           | 7           | 7               | Adding zero to a positive integer           |
      | 7           | 0           | 7               | Adding a positive integer to zero           |
      | 3.5         | 2.5         | 6.0             | Adding two floating-point numbers           |
      | -3.5        | -2.5        | -6.0            | Adding two negative floating-point numbers  |
      | -3.5        | 2.5         | -1.0            | Adding a negative and positive float        |
      | 1000000     | 2000000     | 3000000         | Large integer addition                      |
      | -1000000    | -2000000    | -3000000        | Large negative integer addition             |
      | 1.23456789  | 0.12345678  | 1.35802467      | High precision floating-point addition      |
      | 1.0E10      | 1.0E10      | 2.0E10          | Scientific notation addition                |
      | -1.0E10     | 1.0E10      | 0               | Large positive and negative cancel out      |
      | 3.5         | 0           | 3.5             | Adding zero to a float                      |
      | 0           | -3.5        | -3.5            | Adding zero to a negative float             |
