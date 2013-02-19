class CreateTestClasses < ActiveRecord::Migration
  def change
    create_table :test_classes do |t|
      t.string :string

      t.timestamps
    end
  end
end
