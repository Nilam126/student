class Book1Controller < ApplicationController
 

  def delete
 @book1=Book1.find(params[:id])

  end

  def destroy
    bk=Book1.find(params[:id])
    bk.destroy
    redirect_to(action: 'list')

  end

  def update
    @book1=Book1.find(params[:id])
     @book1.update(params.require(:book1).permit(:name,:auther,:price))
     redirect_to(action:'list')
    #if @book1.update_attributes(book_params)
      #redirect_to(action:'list')
#else
 # render('edit')

end

def edit
  @book1= Book1.find(params[:id])  
end
  

  def list
    @book1=Book1.all
  end

  def show
    @book1=Book1.find(params[:id])

  end

  def new
    @book1=Book1.new
  end

  def create
    #@book1= Book1.new (book_params)
    #if @book1.save(params.require(:book1).permit(:name,:auther,:price))
     # redirect_to(action:  'list')
    #else
      #flash[:notice] = "Error:Record not created"
      #render(action: 'new')
    @book1=Book1.create(params.require(:book1).permit(:name,:auther,:price))
    if @book1.valid?
    redirect_to(action:  'list')
    else
      flash[:errors] = "Error:Record not created"
      redirect_to(action:  'new')
    end
    
  end
  

  def book_params
    params.require(:book1s).permit(:name,:auther,:price)
    end
end