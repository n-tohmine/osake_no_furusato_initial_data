# frozen_string_literal: true

class DropLiquorTypes < ActiveRecord::Migration[6.1]
  def change
    drop_table :liquor_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
