class ConnectionsController < ApplicationController
  before_action :set_connection, only: [:show]

  def index
    if params[:contact_id]
      set_contact
      @connections = @contact.connections
      render json: @connections
    else    
      @connections = Connection.all
    end
  end

  def show
    if params[:contact_id]
      set_contact
    end
  end

  def new
    if params[:contact_id]
      set_contact
      @connection = @contact.connections.build
      render json: @connection
    else    
      @connection = Connection.new
      render json: @connection
    end
  end

  def create
    if params[:contact_id]
      set_contact
      @connection = @contact.connections.build(connection_params)
      render json: @connection 
    else    
      @connection = Connection.new(connection_params)
      render json: @connection
    end
    if @connection.save
      if @contact 
        render json: @connection   
      else    
        render json: @connection
      end
    else   
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private  
    def set_contact
      @contact = Contact.find_by_id(params[:contact_id])
    end

    def set_connection
      @connection = Connection.find_by_id(params[:id])
    end

    def connection_params
      params.require(:connection).permit(:contact_date, :take_away)
    end
end
