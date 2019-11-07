class PlansController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def new
    @plan = Plan.new
  end

  def show
    @plan = Plan.find_by(id: params[:id])
  end

  def create
    #  byebug
    # build compared to new adds the newly created plan to the plans collection
    @plan = current_user.plans.build(plan_params)
    
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def edit
    @plan = Plan.find_by(id: params[:id])
  end

  def update
    @plan = Plan.find_by(id: params[:id])
    if @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit
    end
  end

  private

  def plan_params
    # "plan"=>{"title"=>"Test Plan", "description"=>"Awesome Text", "active"=>"1"}
    params.permit(plan).require(:title, :description, :active)
  end
end
