class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destory]

    # GET /contacts
    def index
        @contacts = Contact.all
        render json: @contacts
    end

    # GET /contacts/1
    def show
        render json: @contact
    end

    #POST /contact/1
    def new
        @contact = Contact.new
        5.times{@contact.connections.build}
    end

    # POSTS /contacts
    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            render json: @contact, status: :created, location: @contact
        else   
            render json: {errors: @contact.errors.full_messages.to_sentence}
        end
    end

    # PATCH/PUT /contacts/1
    def edit
        if !@contact 
            render json: @contact
        end
    end

    # PATCH/PUT /contacts/1
    def update
        if @contact.update(contact_params)
            render json: @contact
        else   
            render json: {errors: @contact.errors.full_messages.to_sentence}
        end
    end

    # DELETE /contacts/1
    def destory
        @contact.destory
    end

    private 

        def set_contact
            @contact = Contact.find(params[:id])
        end

        def position_params
            params.require(:contact).permit(:first_name, :last_name, :email, :company_name, :job_title, connections_attributes: [:id, :contact_date, :take_away])
        end
end