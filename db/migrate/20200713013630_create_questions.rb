class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string        :quiz , null: false
      t.string      :correct , null: false
      t.text        :explain_sentence , null: false
      t.timestamps
    end
  end
end
