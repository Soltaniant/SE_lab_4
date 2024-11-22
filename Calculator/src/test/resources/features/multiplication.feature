Feature: Multiplication Operation
  As a user
  I want to multiply two numbers
  So that I can calculate the product

  Scenario Outline: Multiplying two numbers
    Given the calculator is initialized
    When I input the operands <operand1> and <operand2> and the operator "*"
    Then the result should be <expectedResult>

    Examples:
      | operand1    | operand2    | expectedResult   | Comment                                       |
      | 10          | 5           | 50              | Basic multiplication of positive integers    |
      | -10         | -5          | 50              | Multiplication of two negative integers      |
      | -10         | 5           | -50             | Multiplication of a positive and a negative  |
      | 10          | 0           | 0               | Multiplication with zero                     |
      | 0           | 10          | 0               | Multiplication with zero (order reversed)    |
      | 3.5         | 2.5         | 8.75            | Multiplication of two floating-point numbers |
      | -3.5        | -2.5        | 8.75            | Multiplication of negative floating-point numbers |
      | -3.5        | 2.5         | -8.75           | Multiplication of positive and negative float |
      | 1.0E10      | 2.0         | 2.0E10          | Multiplication with large numbers (scientific notation) |
      | -1.0E10     | 2.0         | -2.0E10         | Multiplication of large positive and negative |
      | 3.0E-2      | 1.0E-2      | 3.0E-4          | Multiplication with small numbers in scientific notation |
      | 1           | -1          | -1              | Multiplying positive one and negative one    |
