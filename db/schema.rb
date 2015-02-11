# encoding: UTF-8

ActiveRecord::Schema.define(version: 20150211101145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: true do |t|
    t.string  "title"
    t.string  "description"
    t.boolean "status"
    t.string  "category"
  end

end
