class CreateTvshows < ActiveRecord::Migration[5.2]
  def change
    create_table :tvshows do |t|
      t.string :name
      t.time :show_timing
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
