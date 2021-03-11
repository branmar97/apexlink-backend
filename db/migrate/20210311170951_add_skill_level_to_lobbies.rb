class AddSkillLevelToLobbies < ActiveRecord::Migration[6.1]
  def change
    add_column :lobbies, :skill_level, :string
  end
end
