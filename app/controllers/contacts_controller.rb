class ContactsController < ApplicationController

  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end

  def index
    user = User.find_by(id: params[:user_id])
    all_contacts = user.contacts + user.shared_contacts
    render json: all_contacts
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find_by(id: params[:id])
    if contact.nil?
      render text: "cannot find contact"
    else render json: contact
    end
  end

  def update
    contact = Contact.find_by(id: params[:id])
    if contact.nil?
      render text: "cannot find contact"
    elsif contact.update(contact_params)
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    if contact.nil?
      render text: "cannot find contact"
    elsif contact.destroy
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end
  end

end
