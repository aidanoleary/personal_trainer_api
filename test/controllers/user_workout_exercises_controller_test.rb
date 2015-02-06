require 'test_helper'

class UserWorkoutExercisesControllerTest < ActionController::TestCase
  setup do
    @user_workout_exercise = user_workout_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_workout_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_workout_exercise" do
    assert_difference('UserWorkoutExercise.count') do
      post :create, user_workout_exercise: { exercise_id: @user_workout_exercise.exercise_id, number_of_reps: @user_workout_exercise.number_of_reps, number_of_sets: @user_workout_exercise.number_of_sets, user_workout_id: @user_workout_exercise.user_workout_id }
    end

    assert_redirected_to user_workout_exercise_path(assigns(:user_workout_exercise))
  end

  test "should show user_workout_exercise" do
    get :show, id: @user_workout_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_workout_exercise
    assert_response :success
  end

  test "should update user_workout_exercise" do
    patch :update, id: @user_workout_exercise, user_workout_exercise: { exercise_id: @user_workout_exercise.exercise_id, number_of_reps: @user_workout_exercise.number_of_reps, number_of_sets: @user_workout_exercise.number_of_sets, user_workout_id: @user_workout_exercise.user_workout_id }
    assert_redirected_to user_workout_exercise_path(assigns(:user_workout_exercise))
  end

  test "should destroy user_workout_exercise" do
    assert_difference('UserWorkoutExercise.count', -1) do
      delete :destroy, id: @user_workout_exercise
    end

    assert_redirected_to user_workout_exercises_path
  end
end
