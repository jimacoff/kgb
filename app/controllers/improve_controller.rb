# encoding: utf-8

class ImproveController < ApplicationController
  # GET /improve
  # GET /improve.json
  def index
    @improve = Improve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @improve }
    end
  end

  # GET /improve/1
  # GET /improve/1.json
  def show
    @improve = Improve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @improve }
    end
  end

  # GET /improve/new
  # GET /improve/new.json
  def new
    @improve = Improve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @improve }
    end
  end

  # GET /improve/1/edit
  def edit
    @improve = Improve.find(params[:id])
  end

  # POST /improve
  # POST /improve.json
  def create
    @improve = Improve.new(params[:improve])

    respond_to do |format|
      if @improve.save
        format.html { redirect_to @improve, notice: '제안이 접수되었습니다.' }
        format.json { render json: @improve, status: :created, location: @improve }
      else
        format.html { render action: "new" }
        format.json { render json: @improve.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /improve/1
  # PUT /improve/1.json
  def update
    @improve = Improve.find(params[:id])

    respond_to do |format|
      if @improve.update_attributes(params[:improve])
        format.html { redirect_to @improve, notice: 'Improve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @improve.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improve/1
  # DELETE /improve/1.json
  def destroy
    @improve = Improve.find(params[:id])
    @improve.destroy

    respond_to do |format|
      format.html { redirect_to improve_index_url }
      format.json { head :no_content }
    end
  end
end
