class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text        :quiz
      t.text        :explain_sentence
      t.timestamps
    end
  end
end
