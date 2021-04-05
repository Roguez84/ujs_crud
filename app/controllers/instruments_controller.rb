class InstrumentsController < ApplicationController
    def create
        #@instrument = Instrument.create(instrument_params)
        @instrument = Instrument.new(instrument_params)
        #render json: @instrument.to_json
        unless @instrument.save
            render json: @instrument.errors, status: :unprocessable_entity
    end

    private
    def instrument_params
        params.require(:instrument).permit(:name)
    end
end
