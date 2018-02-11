class CreateHoles < ActiveRecord::Migration[5.1]
  def change
    create_table :holes do |t|
      t.integer :holeNum
      t.integer :blueYardage
      t.integer :whiteYardage
      t.integer :redYardage
      t.integer :par
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
