class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :update, :destory]

    # GET /contacts
    def index
        @contacts = Contact.all
        render json: @contacts: [:first_name, :last_name, :email]
    end

    # GET /positions/1
    def show
        render json: @contact
    end

    # POSTS /posts
    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            render json: @contact
        else   
            render json: {errors: @contact.errors.full_messages.to_sentence}
        end
    end

    # PATCH/PUT /positions/1
    def update
        if @contact.update(contact_params)
            render json: @contact_params
        else   
            render json: {errors: @contact.errors.full_messages.to_sentence}
        end
    end

    # DELETE /positions/1
    def destory
        @contact.destory
        render json: @contact
    end

    private 

        def set_contact
            @contact = Contact.find(params[:id])
        end

        def position_params
            params.require(:contact).permit(:first_name, :last_name, :email, :company_name, :job_title)
        end
end