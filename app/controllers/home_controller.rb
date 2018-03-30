class HomeController < ApplicationController
	def index
    @portfolios = Portfolio.all
  	@technologies = Technology.all
    @testimonials = Testimonial.all
    @contact = Contact.new
    @success = false
    
    # return render :text => @contact.inspect 
  end

  def portfolios
    @portfolios = Portfolio.all
  end

  def about
  end

  def team
  end

  def contact_us
    @contact = Contact.new
  end
   
  def create
    @contact = Contact.new(contact_params)
    # return render :text => @contact.inspect
    if @contact.save
      @msg = 'Thank you for Contacting us! We Will Messsage you soon'
      @success = true
      @contact = Contact.new
    else
      @msg = 'Cannot send message.'
      @error
    end    
  end

 private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
