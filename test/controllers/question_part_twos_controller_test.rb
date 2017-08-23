require 'test_helper'

class QuestionPartTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_part_two = question_part_twos(:one)
  end

  test "should get index" do
    get question_part_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_question_part_two_url
    assert_response :success
  end

  test "should create question_part_two" do
    assert_difference('QuestionPartTwo.count') do
      post question_part_twos_url, params: { question_part_two: {  } }
    end

    assert_redirected_to question_part_two_url(QuestionPartTwo.last)
  end

  test "should show question_part_two" do
    get question_part_two_url(@question_part_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_part_two_url(@question_part_two)
    assert_response :success
  end

  test "should update question_part_two" do
    patch question_part_two_url(@question_part_two), params: { question_part_two: {  } }
    assert_redirected_to question_part_two_url(@question_part_two)
  end

  test "should destroy question_part_two" do
    assert_difference('QuestionPartTwo.count', -1) do
      delete question_part_two_url(@question_part_two)
    end

    assert_redirected_to question_part_twos_url
  end
end
