class CreateHipsters < ActiveRecord::Migration[5.0]
  def change
    create_table :hipsters do |t|
      t.string :word
      t.string :sentence
      t.string :paragraph

      t.timestamps
    end
  end
end
