class AddTriagramExtension < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE EXTENSION pg_trgm
    SQL
  end

  def down
    execute <<-SQL
      DROP EXTENSION pg_trgm
    SQL
  end
end
