class PhotoTestsController < ApplicationController
  # GET /photo_tests
  # GET /photo_tests.json
  def index
    @photo_tests = PhotoTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_tests }
    end
  end

  # GET /photo_tests/1
  # GET /photo_tests/1.json
  def show
    @photo_test = PhotoTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_test }
    end
  end

  # GET /photo_tests/new
  # GET /photo_tests/new.json
  def new
    @photo_test = PhotoTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_test }
    end
  end

  # GET /photo_tests/1/edit
  def edit
    @photo_test = PhotoTest.find(params[:id])
  end

  # POST /photo_tests
  # POST /photo_tests.json
  def create
    @photo_test = PhotoTest.new(params[:photo_test])

    respond_to do |format|
      if @photo_test.save
        format.html { redirect_to @photo_test, notice: 'Photo test was successfully created.' }
        format.json { render json: @photo_test, status: :created, location: @photo_test }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_tests/1
  # PUT /photo_tests/1.json
  def update
    @photo_test = PhotoTest.find(params[:id])

    respond_to do |format|
      if @photo_test.update_attributes(params[:photo_test])
        format.html { redirect_to @photo_test, notice: 'Photo test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_tests/1
  # DELETE /photo_tests/1.json
  def destroy
    @photo_test = PhotoTest.find(params[:id])
    @photo_test.destroy

    respond_to do |format|
      format.html { redirect_to photo_tests_url }
      format.json { head :no_content }
    end
  end
end
