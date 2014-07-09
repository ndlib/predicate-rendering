# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140709150318) do

  create_table "hydramata_works_predicate_presentation_sequences", force: true do |t|
    t.integer  "predicate_set_id",      null: false
    t.integer  "predicate_id",          null: false
    t.integer  "presentation_sequence", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hydramata_works_predicate_presentation_sequences", ["predicate_set_id", "predicate_id"], name: "hydramata_works_predicate_presentation_sequences_identity", unique: true
  add_index "hydramata_works_predicate_presentation_sequences", ["predicate_set_id", "presentation_sequence"], name: "hydramata_works_predicate_presentation_sequences_presentation", unique: true

  create_table "hydramata_works_predicate_sets", force: true do |t|
    t.integer  "work_type_id",               null: false
    t.string   "identity",                   null: false
    t.integer  "presentation_sequence",      null: false
    t.string   "name_for_application_usage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hydramata_works_predicate_sets", ["work_type_id", "identity"], name: "hydramata_works_predicate_set_identity", unique: true
  add_index "hydramata_works_predicate_sets", ["work_type_id", "presentation_sequence"], name: "hydramata_works_predicate_set_sequence", unique: true

  create_table "hydramata_works_predicates", force: true do |t|
    t.string   "identity",                   null: false
    t.string   "name_for_application_usage"
    t.string   "datastream_name"
    t.string   "value_coercer_name"
    t.string   "value_parser_name"
    t.string   "indexing_strategy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "validations"
    t.string   "itemprop_schema_dot_org"
  end

  create_table "hydramata_works_types", force: true do |t|
    t.string   "identity",                   null: false
    t.string   "name_for_application_usage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "itemtype_schema_dot_org"
  end

end
