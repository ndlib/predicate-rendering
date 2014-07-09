# This migration comes from hydramata_works (originally 20140606132351)
class CreateHydramataWorkPredicateSets < ActiveRecord::Migration
  def change
    create_table :hydramata_works_predicate_sets do |t|
      t.integer :work_type_id, index: true, null: false
      t.string :identity, index: true, null: false
      t.integer :presentation_sequence, index: true, null: false
      t.string :name_for_application_usage
      t.timestamps
    end
    add_index :hydramata_works_predicate_sets, [:work_type_id, :presentation_sequence], unique: true, name: :hydramata_works_predicate_set_sequence
    add_index :hydramata_works_predicate_sets, [:work_type_id, :identity], unique: true, name: :hydramata_works_predicate_set_identity
  end
end
