class LobbySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :region, :platform, :gamemode, :description, :short_desc, :mic_required, :skill_level, :created_at, :user, :requests
end
