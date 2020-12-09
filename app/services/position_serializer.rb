class PositionSerializer
    def initialize(position_object)
        @position = position_object
    end

    def to_serialized_json
        @position.to_json(:include => { :position})
    end
end