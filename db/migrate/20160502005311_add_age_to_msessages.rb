class AddAgeToMsessages < ActiveRecord::Migration
  def change
    add_column :msessages, :age, :integer
  end
end
