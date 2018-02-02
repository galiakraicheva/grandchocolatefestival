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

ActiveRecord::Schema.define(version: 20180202104821) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "person_name"
    t.string "person_phone"
    t.string "person_email"
    t.string "person_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entity_id"
    t.index ["entity_id"], name: "index_contacts_on_entity_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "common_name", null: false
    t.string "website"
    t.string "fb_page"
    t.string "description"
    t.string "progress"
    t.boolean "is_participant"
    t.boolean "is_sponsor"
    t.boolean "is_media"
    t.boolean "is_partner"
    t.text "comments"
    t.string "country", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_entities_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "firm_name"
    t.string "firm_vat"
    t.string "firm_eik"
    t.string "firm_address"
    t.string "firm_mol"
    t.string "invoice_number"
    t.string "invoice_amount"
    t.string "terms"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entity_id"
    t.index ["entity_id"], name: "index_invoices_on_entity_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "stand_number", null: false
    t.string "access_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entity_id"
    t.integer "questionnaire_id"
    t.index ["entity_id"], name: "index_participants_on_entity_id"
    t.index ["questionnaire_id"], name: "index_participants_on_questionnaire_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.boolean "need_chairs"
    t.boolean "need_table"
    t.string "event_contact_person_name", null: false
    t.string "event_contact_person_phone", null: false
    t.string "hygiene_person", null: false
    t.integer "invitation_number"
    t.string "correspondence_address", null: false
    t.integer "badges_number"
    t.boolean "participate_exhibit"
    t.string "exhibit_items"
    t.boolean "participate_lottary"
    t.string "lottary_items"
    t.string "participate_sampling"
    t.string "sampling_hours"
    t.string "electricity_consumption", null: false
    t.integer "plugs_number", null: false
    t.string "car_registration_number", null: false
    t.string "printed_label", null: false
    t.string "gcf_website_name", null: false
    t.string "gcf_website_url"
    t.string "gcf_website_description"
    t.string "gcf_website_address"
    t.boolean "participate_presentation"
    t.string "presentation_topic"
    t.string "presentation_speaker"
    t.text "participant_comments"
    t.boolean "terms_of_service", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
