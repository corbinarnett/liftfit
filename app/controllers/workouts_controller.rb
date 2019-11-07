class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
    5.times { @workout.exercises.build }
  end

  def index 
  end

  def show
    @workout = Workout.find_by(id: params[:id])
  end

  def create
    # "workout"=>{"title"=>"Workout A", "category"=>"push"}
    @workout = current_user.created_workouts.build(workout_params)
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end


  private

  def workout_params
    params.require(:workout).permit(:title, :category, exercises_attributes: [:name, :muscle_group, :equipment])
  end
end
