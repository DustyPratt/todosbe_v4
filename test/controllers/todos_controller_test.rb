require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo = todos(:one)
  end

  test "should get index" do
    get todos_url, as: :json
    assert_response :success
  end

  test "should create todo" do
    assert_difference('Todo.count') do
      post todos_url, params: { todo: { answer0: @todo.answer0, answer1: @todo.answer1, answer2: @todo.answer2, answer3: @todo.answer3, answer4: @todo.answer4, answer5: @todo.answer5 } }, as: :json
    end

    assert_response 201
  end

  test "should show todo" do
    get todo_url(@todo), as: :json
    assert_response :success
  end

  test "should update todo" do
    patch todo_url(@todo), params: { todo: { answer0: @todo.answer0, answer1: @todo.answer1, answer2: @todo.answer2, answer3: @todo.answer3, answer4: @todo.answer4, answer5: @todo.answer5 } }, as: :json
    assert_response 200
  end

  test "should destroy todo" do
    assert_difference('Todo.count', -1) do
      delete todo_url(@todo), as: :json
    end

    assert_response 204
  end
end
