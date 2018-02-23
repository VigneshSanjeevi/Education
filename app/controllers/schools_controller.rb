class SchoolsController < ApplicationController
	before_action :authenticate_admin!, only: [:new,:edit]
  def index
	@schools=School.all	
	@board = params[:Board]
	@area = params[:Area]
	@school_name =  params[:School]
	 
	@school = if @board && @area && @school_name
	    School.where('board LIKE ? AND area LIKE ? AND name LIKE ?', "%#{params[:Board]}%","%#{params[:Area]}%","%#{params[:School]}%")
	else if @board && @area 
	    School.where('board LIKE ? AND area LIKE ?', "%#{params[:Board]}%","%#{params[:Area]}%")
	else if @board && @school_name
	    School.where('board LIKE ? AND name LIKE ?', "%#{params[:Board]}%","%#{params[:School]}%")
	else if @area && @school_name
	    School.where('board LIKE ? AND name LIKE ?', "%#{params[:Area]}%","%#{params[:School]}%")
	else if @board
             School.where('board LIKE ?', "%#{params[:Board]}%")
	else if @area
             School.where('area LIKE ?', "%#{params[:Area]}%")
	else if @school_name
             School.where('name LIKE ?', "%#{params[:School]}%")
  	else
	    School.all
  	end
	end
	end
	end
	end
	end
	end
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


  def show
	 @school=School.all
  end
	
	def edit_schools
		@school=School.find_by_id params[:id]		
	end

	def update
		@school = School.find_by_id params[:id]
		if @school.update(school_params)		
	    redirect_to "/schools/edit"
	  else
	    render 'edit'
	  end
	end

  def edit
	@school= School.all
  end

  def destroy
		@school=School.find_by_id params[:id]
		#@school = School.find params[:id]
if @school.present?
	@school.destroy
end
redirect_to "/schools/edit"
  end
		private
		  def school_params
		    params.require(:school).permit(:board, :area, :name, :address, :phno, :image)
		  end

end
