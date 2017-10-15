class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]


    def index
        @workout = Exercise.all
    end

    def show
    end

    def new
        @workout = Exercise.new
    end

    def create
        workout = Exercise.new(post_workout)
        if workout.save
            redirect_to workout_path(workout)
        else
            redirect_to new_workout_path
        end
    end

    def edit
    end

    def update
        if @workout.update(post_workout)
            redirect_to workout_path(@workout)
        else
            render 'edit'  
        end          
    end

    def destroy
        @workout.destroy
        redirect_to root_path
    end

    def category
        @workout = Exercise.where(category: (params[:category]))
    end

    private

    def post_workout
        params.require(:exercise).permit(:name, :category, :reps, :example, :progression)
    end

    def find_workout
        @workout = Exercise.find(params[:id])
    end


end
