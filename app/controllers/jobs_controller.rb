class JobsController < ApplicationController

  before_action :authenticate_user!, except: %i[index show]
  before_action :set_job, only: %i[show edit update destroy]

  # GET /jobs.json
  def index
    @jobs = Job.all.order("created_at DESC")
  end

  # GET /jobs.json
  def show
  end

  # GET /jobs/new
  def new
    @job = current_user.jobs.build
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = current_user.jobs.build(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Your job was created successfully!' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end

  rescue Stripe::CardError => e
    flash.alert = e.message
    render action: :new
  end

  # PATCH/PUT /jobs/1
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Your job was updated successfully!.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Your job was destroyed successfully!.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:title,
                                :description,
                                :level,
                                :job_type,
                                :location,
                                :remoteable,
                                :apply_url,
                                :is_published)
  end
end