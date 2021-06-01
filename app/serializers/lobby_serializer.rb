class LobbySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :gamertag, :region, :platform, :gamemode, :description, :mic_required, :skill_level, :created_at, :user
end
