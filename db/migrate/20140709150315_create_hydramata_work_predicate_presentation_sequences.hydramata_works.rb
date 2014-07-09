# This migration comes from hydramata_works (originally 20140606132352)
class CreateHydramataWorkPredicatePresentationSequences < ActiveRecord::Migration
  def change
    create_table :hydramata_works_predicate_presentation_sequences do |t|
      t.integer :predicate_set_id, index: true, null: false
      t.integer :predicate_id, index: true, null: false
      t.integer :presentation_sequence, index: true, null: false
      t.timestamps
    end
    add_index :hydramata_works_predicate_presentation_sequences, [:predicate_set_id, :predicate_id], unique: true, name: :hydramata_works_predicate_presentation_sequences_identity
    add_index :hydramata_works_predicate_presentation_sequences, [:predicate_set_id, :presentation_sequence], unique: true, name: :hydramata_works_predicate_presentation_sequences_presentation
  end
end
