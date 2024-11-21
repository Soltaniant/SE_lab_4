package steps;

import static org.junit.Assert.assertEquals;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import org.example.Calculator;

public class AdditionSteps {
	private Calculator calculator;
	private double result;

	@Given("the calculator is initialized")
	public void the_calculator_is_initialized() {
		calculator = new Calculator();
	}

	@When("I input the operands {double} and {double} and the operator \"+\"")
	public void i_input_the_operands_and_the_operator(double operand1, double operand2) {
		result = calculator.add(operand1, operand2); // Assuming add method in Calculator
	}

	@Then("the result should be {double}")
	public void the_result_should_be(double expectedResult) {
		assertEquals(expectedResult, result, 0.00001); // Allowing for floating-point precision
	}
}
