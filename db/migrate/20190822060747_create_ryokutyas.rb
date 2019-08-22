class CreateRyokutyas < ActiveRecord::Migration[6.0]
  def change
    create_table :ryokutyas do |t|

      t.timestamps
    end
  end
end
