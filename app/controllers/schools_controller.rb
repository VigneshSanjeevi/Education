class SchoolsController < ApplicationController
  def index
	@school=School.all	
	# gon.your_variable = @school
#	@school=School.all
  end

  def new
	@school=School.new	
  end
  def create

    @school=School.new(school_params)  
    if @school.save
      redirect_to "/schools/new", notice: "School added successsfully"     
    else
      render "new"
    end     
  end
  def buttons
	#@schools=School.all
	@board='Anglo Indian'
	#@board = params[:myform][:Board].reject(&:blank?) unless params[:myform].nil?
 	#@board = params['myform']['Board']
	@school = School.find_by_sql ["SELECT * FROM schools WHERE board = ?", @board]
	if @school.empty?
   flash[:notice] = 'No Results'
   redirect_to root_url
	else
	flash[:notice] = @school
   redirect_to "/schools/index"
  end
  end


  def show
	@school = School.all
  end

  def edit
	@school= School.find_by id:params[:id]
  end

  def destroy
  end
		private
		  def school_params
		    params.require(:school).permit(:board, :area, :name, :address, :phno)
		  end

end
