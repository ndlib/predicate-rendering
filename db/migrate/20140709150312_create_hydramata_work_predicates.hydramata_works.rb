# This migration comes from hydramata_works (originally 20140606132349)
class CreateHydramataWorkPredicates < ActiveRecord::Migration
  def change
    create_table :hydramata_works_predicates do |t|
      t.string :identity, index: { unique: true }, null: false
      t.string :name_for_application_usage
      t.string :datastream_name
      t.string :value_coercer_name
      t.string :value_parser_name
      t.string :indexing_strategy
      t.timestamps
    end
  end
end
