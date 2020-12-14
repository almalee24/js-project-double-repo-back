class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :update, :destroy]

    # GET /contacts
    def index
        @contacts = Contact.all
        render json: @contacts
    end

    # GET /contacts/1
    def show
        render json: @contact

    # POSTS /contacts
    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            render json: @contact, status: :created, location: @contact
        else   
            render json: @contact.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /contacts/1
    def update
        if @contact.update(contact_params)
            render json: @contact
        else   
            render json: @contact.errors, status: :unprocessable_entity
        end
    end

    # DELETE /contacts/1
    def destroy
        @contact.destroy
    end

    private 

        def set_contact
            @contact = Contact.find(params[:id])
        end

        def contact_params
            params.require(:contact).permit(:first_name, :last_name, :email, :company_name, :job_title)
        end
end