class LobbySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :region, :platform, :gamemode, :description, :short_desc, :mic_required, :skill_level, :live, :created_at, :user, :requests
end
