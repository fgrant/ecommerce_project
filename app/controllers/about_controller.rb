class AboutController < ApplicationController
  
    
  attr_accessor :title
  attr_accessor :about_text
  
  def get_title
    @title =  about.title
  end

  def index
    #@abouts = About.all
    @about = About.first
    
  end

  def show
    @about = About.find(params[:id])
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to @about
    else
      render :new

    end
  
  
  
  
  
  
  
  
  
  
  
  
  



    







    def edit
      @about = About.find(params[:id])
    end

    
 def update
      @about = About.find(params[:id])
      if @about.update_attributes(about_params)
        redirect_to @about
      else
        render :edit
      end
 end


  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to root_path
  end

  
  

  private

  def about_params
    params.require(:about).permit(:title, :about_text)
  end
end

