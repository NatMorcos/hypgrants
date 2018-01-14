class AddGrants < SeedMigration::Migration
  def up
    submissions_open = DateTime.parse("2018-01-01")
    submissions_close = DateTime.parse("2018-03-31")
    grant_details = [
     {title: "Small Grant", total_amount: 1000.00, submission_min: 100.00, submission_max: 200.00},
     {title: "Large Grant", total_amount: 2000.00, submission_min: 500.00, submission_max: 700.00},
     {title: "Effigy Grant", total_amount: 3000.00},
     {title: "Temple Grant", total_amount: 3000.00}
    ]

    grant_details.each do |grant_params|
      grant_params.merge!({submissions_open_at: submissions_open, submissions_close_at: submissions_close})
      Grant.create(grant_params)
    end
  end

  def down
  end
end
