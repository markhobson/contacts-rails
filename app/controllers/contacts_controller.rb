class ContactsController < ApplicationController
  def show
    @contact = Contact.find(params[:id])
  end

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to @contact
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :mobile)
    end
end
