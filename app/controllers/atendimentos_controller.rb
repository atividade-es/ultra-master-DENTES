class AtendimentosController < ApplicationController
  before_action :set_atendimento, only: %i[ show edit update destroy ]

  # GET /atendimentos or /atendimentos.json
  def index
    @atendimentos = Atendimento.all
  end

  # GET /atendimentos/1 or /atendimentos/1.json
  def show
    @atendimento = Atendimento.find(params[:id])
  end

  # GET /atendimentos/new
  def new
    @atendimento = Atendimento.new
  end

  # GET /atendimentos/1/edit
  def edit
    @atendimento = Atendimento.find(params[:id])
  end

  # POST /atendimentos or /atendimentos.json
  def create
    @atendimento = Atendimento.new(atendimento_params)

    respond_to do |format|
      if @atendimento.save
        format.html { redirect_to atendimento_url(@atendimento), notice: "Atendimento was successfully created." }
        format.json { render :show, status: :created, location: @atendimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendimentos/1 or /atendimentos/1.json
  def update
    respond_to do |format|
      if @atendimento.update(atendimento_params)
        format.html { redirect_to atendimento_url(@atendimento), notice: "Atendimento was successfully updated." }
        format.json { render :show, status: :ok, location: @atendimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendimentos/1 or /atendimentos/1.json
  def destroy
    @atendimento = Atendimento.find(params[:id])
    @atendimento.destroy
    redirect_to atendimentos_path, notice: "Consulta excluida com sucesso."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atendimento_params
      params.require(:atendimento).permit(:dentista_id, :paciente_id, :data_hora, :observacao)
    end
end
