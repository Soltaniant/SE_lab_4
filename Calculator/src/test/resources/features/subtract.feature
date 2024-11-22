Feature: Subtraction Operation
  As a user
  I want to subtract two numbers
  So that I can calculate the difference

  Scenario Outline: Subtracting two numbers
    Given the calculator is initialized
    When I input the operands <operand1> and <operand2> and the operator "-"
    Then the result should be <expectedResult>

    Examples:
      | operand1    | operand2    | expectedResult   | Comment                                       |
      | 10          | 5           | 5               | Basic subtraction of positive integers       |
      | -10         | -5          | -5              | Subtraction of two negative integers         |
      | -10         | 5           | -15             | Subtraction of a positive from a negative    |
      | 10          | -5          | 15              | Subtraction of a negative from a positive    |
      | 0           | 0           | 0               | Subtracting zero from zero                   |
      | 5           | 0           | 5               | Subtracting zero from a positive number      |
      | 0           | 5           | -5              | Subtracting a positive number from zero      |
      | 3.5         | 2.5         | 1.0             | Subtracting two floating-point numbers       |
      | -3.5        | -2.5        | -1.0            | Subtracting two negative floating-point numbers |
      | -3.5        | 2.5         | -6.0            | Subtraction of positive from negative float  |
      | 3.5         | 0           | 3.5             | Subtracting zero from a float                |
      | 0           | -3.5        | 3.5             | Subtracting a negative float from zero       |
      | 1.0E10      | 1.0E9       | 9.0E9           | Subtraction using large numbers (scientific notation) |
      | -1.0E10     | 1.0E10      | -2.0E10         | Subtracting a large positive from a large negative |
      | 3.0E-2      | 1.0E-2      | 2.0E-2          | Subtraction with small numbers in scientific notation |