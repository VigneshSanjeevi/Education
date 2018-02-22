class SchoolsController < ApplicationController
  def index
	@school=School.all
	
  
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
	
  end

  def show
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
	
  

  

  def edit
	@school= School.find_by id:params[:id]
  end

  def destroy
@school = School.find(params[:id])
	 @school.destroy
 
	 redirect_to schools_path
  end
		private
		  def school_params
		    params.require(:school).permit(:board, :area, :name, :address, :phno)
		  end

end
