class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :update, :destory]

    # GET /contacts
    def index
        @contacts = Contact.all
        render json: @contacts.as_json(include: {connections: {only:[:id, :contact_date, :take_away]}})
    end

    # GET /contacts/1
    def show
        render json: @contact.as_json(include: {connections: {only:[:id, :contact_date, :take_away]}})
    end

    # POSTS /contacts
    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            render json: @contact, status: :created, location: @contact
        else   
            render json: @contact.erros, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /contacts/1
    def update
        if @contact.update(contact_params)
            render json: @contact
        else   
            render json: @contact.erros, status: :unprocessable_entity
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
            params.require(:contact).permit(:first_name, :last_name, :email, :company_name, :job_title, connections_attributes: [:contact_date, :take_away, :contact_id])
        end
end