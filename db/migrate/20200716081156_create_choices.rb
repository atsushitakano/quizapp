class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.references :question , foreign_key: true
      t.string     :choice_a 
      t.string     :choice_b 
      t.string     :choice_c 
      t.string     :choice_d 
      t.timestamps
    end
  end
end
