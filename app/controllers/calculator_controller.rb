# Created by Diego Sosa
# This controller handles HttpRequest from a client.
# It returns a JSON object with the result of the
# requested calculation and makes sure that numbers
# get calculated using BigDecimal to avoid floating
# point errors.
class CalculatorController < ApplicationController

  # Sum of two operands
  def sum
    @first_operand = BigDecimal(params[:operand_1])
    @second_operand = BigDecimal(params[:operand_2])
    @result = @first_operand + @second_operand
    json_response(result: @result)
  end


  # Subtraction of two operands
  def subtract
    @first_operand = BigDecimal(params[:operand_1])
    @second_operand = BigDecimal(params[:operand_2])
    @result = @first_operand - @second_operand
    json_response(result: @result)
  end

  # Multiplication of two operands
  def multiply
    @first_operand = BigDecimal(params[:operand_1])
    @second_operand = BigDecimal(params[:operand_2])
    @result = @first_operand * @second_operand
    json_response(result: @result)
  end

  # Division of two operands
  def divide
    @first_operand = BigDecimal(params[:operand_1])
    @second_operand = BigDecimal(params[:operand_2])
    @result = @first_operand / @second_operand
    json_response(result: @result)
  end

  # Calculates @first_operand to the power of @second_operand
  def pow
    @first_operand = BigDecimal(params[:operand_1])
    @second_operand = BigDecimal(params[:operand_2])
    @result = @first_operand ** @second_operand
    json_response(result: @result)
  end

  # Calculates the squareroot of the given operand
  def sqrt
    @first_operand = BigDecimal(params[:operand_1])
    @result = Math.sqrt(@first_operand).to_s
    json_response(result: @result)
  end

end
