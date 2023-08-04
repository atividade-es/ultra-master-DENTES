json.extract! atendimento, :id, :dentista_id, :paciente_id, :data_hora, :observacao, :created_at, :updated_at
json.url atendimento_url(atendimento, format: :json)
