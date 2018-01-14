# encoding: UTF-8
# This file is auto-generated from the current content of the database. Instead
# of editing this file, please use the migrations feature of Seed Migration to
# incrementally modify your database, and then regenerate this seed file.
#
# If you need to create the database on another system, you should be using
# db:seed, not running all the migrations from scratch. The latter is a flawed
# and unsustainable approach (the more migrations you'll amass, the slower
# it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Base.transaction do

  Grant.create({"created_at"=>"2018-01-14T22:34:54.000Z", "submission_max"=>nil, "submission_min"=>nil, "submissions_close_at"=>"2018-05-14T22:34:00.000Z", "submissions_open_at"=>"2018-01-14T22:34:00.000Z", "title"=>"Forever Grant", "total_amount"=>1000, "updated_at"=>"2018-01-14T22:34:54.000Z"})

  Grant.create({"created_at"=>"2018-01-14T23:06:56.000Z", "submission_max"=>200, "submission_min"=>100, "submissions_close_at"=>"2018-03-31T00:00:00.000Z", "submissions_open_at"=>"2018-01-01T00:00:00.000Z", "title"=>"Small Grant", "total_amount"=>1000, "updated_at"=>"2018-01-14T23:06:56.000Z"})

  Grant.create({"created_at"=>"2018-01-14T23:06:56.000Z", "submission_max"=>700, "submission_min"=>500, "submissions_close_at"=>"2018-03-31T00:00:00.000Z", "submissions_open_at"=>"2018-01-01T00:00:00.000Z", "title"=>"Large Grant", "total_amount"=>2000, "updated_at"=>"2018-01-14T23:06:56.000Z"})

  Grant.create({"created_at"=>"2018-01-14T23:06:56.000Z", "submission_max"=>nil, "submission_min"=>nil, "submissions_close_at"=>"2018-03-31T00:00:00.000Z", "submissions_open_at"=>"2018-01-01T00:00:00.000Z", "title"=>"Effigy Grant", "total_amount"=>3000, "updated_at"=>"2018-01-14T23:06:56.000Z"})

  Grant.create({"created_at"=>"2018-01-14T23:06:56.000Z", "submission_max"=>nil, "submission_min"=>nil, "submissions_close_at"=>"2018-03-31T00:00:00.000Z", "submissions_open_at"=>"2018-01-01T00:00:00.000Z", "title"=>"Temple Grant", "total_amount"=>3000, "updated_at"=>"2018-01-14T23:06:56.000Z"})
end

SeedMigration::Migrator.bootstrap(20180110053346)
