class DosesController < ApplicationController
  def new
    @dose = dose.new
  end
  def create
    @dose = Dose.new(dose_params)

    # respond_to do |format|
    #   if @dose.save
    #     format.html { redirect_to @dose, notice: 'Dose was successfully added.' }
    #     format.json { render :show, status: :created, location: @dose }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @dose.errors, status: :unprocessable_entity }
    #   end
    # end
  end
  def destroy
    @dose.destroy
    # respond_to do |format|
    #   format.html { redirect_to dose_url, notice: 'Dose was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private

    def dose_params
      params.require(:dose).permit(:name, :ingredients)
    end
end
