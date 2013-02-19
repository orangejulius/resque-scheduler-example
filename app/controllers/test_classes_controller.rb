class TestClassesController < ApplicationController
  # GET /test_classes
  # GET /test_classes.json
  def index
    @test_classes = TestClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_classes }
    end
  end

  # GET /test_classes/1
  # GET /test_classes/1.json
  def show
    @test_class = TestClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_class }
    end
  end

  # GET /test_classes/new
  # GET /test_classes/new.json
  def new
    @test_class = TestClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_class }
    end
  end

  # GET /test_classes/1/edit
  def edit
    @test_class = TestClass.find(params[:id])
  end

  # POST /test_classes
  # POST /test_classes.json
  def create
    @test_class = TestClass.new(params[:test_class])

    respond_to do |format|
      if @test_class.save
        format.html { redirect_to @test_class, notice: 'Test class was successfully created.' }
        format.json { render json: @test_class, status: :created, location: @test_class }
      else
        format.html { render action: "new" }
        format.json { render json: @test_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_classes/1
  # PUT /test_classes/1.json
  def update
    @test_class = TestClass.find(params[:id])

    respond_to do |format|
      if @test_class.update_attributes(params[:test_class])
        format.html { redirect_to @test_class, notice: 'Test class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_classes/1
  # DELETE /test_classes/1.json
  def destroy
    @test_class = TestClass.find(params[:id])
    @test_class.destroy

    respond_to do |format|
      format.html { redirect_to test_classes_url }
      format.json { head :no_content }
    end
  end
end
