class CreateBetasignups < ActiveRecord::Migration
  def change
    create_table :betasignups do |t|
      t.string :email

      t.timestamps
    end
  end
end
