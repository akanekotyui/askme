require 'test_helper'

class QuestionPartOnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_part_one = question_part_ones(:one)
  end

  test "should get index" do
    get question_part_ones_url
    assert_response :success
  end

  test "should get new" do
    get new_question_part_one_url
    assert_response :success
  end

  test "should create question_part_one" do
    assert_difference('QuestionPartOne.count') do
      post question_part_ones_url, params: { question_part_one: {  } }
    end

    assert_redirected_to question_part_one_url(QuestionPartOne.last)
  end

  test "should show question_part_one" do
    get question_part_one_url(@question_part_one)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_part_one_url(@question_part_one)
    assert_response :success
  end

  test "should update question_part_one" do
    patch question_part_one_url(@question_part_one), params: { question_part_one: {  } }
    assert_redirected_to question_part_one_url(@question_part_one)
  end

  test "should destroy question_part_one" do
    assert_difference('QuestionPartOne.count', -1) do
      delete question_part_one_url(@question_part_one)
    end

    assert_redirected_to question_part_ones_url
  end
end
