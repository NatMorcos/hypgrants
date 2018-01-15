class AddUsers < SeedMigration::Migration
  def up
    admins = [
      {email: "nat.morcos@gmail.com"},
      {email: "me@rolandlopes.com"},
      {email: "magnolia.kai@gmail.com"},
      {email: "rehanna.dk@gmail.com"}
    ]
    admins.each do |admin_details|
      admin_details.merge!({password: "Password123", role: 0})
      create_confirmed_user(admin_details)
    end

    # artists
    create_confirmed_user({
      email: "confirmed_artist@example.com",
      password: "Password123",
      artist_name: "Confirmed Arist Name",
      contact_name: "Confirmed Contact Name",
      phone_number: "555-555-5555"
    })
    create_unconfirmed_user({
      email: "unconfirmed_artist@example.com",
      password: "Password123",
      artist_name: "Unconfirmed Arist Name",
      contact_name: "Unconfirmed Contact Name",
      phone_number: "555-555-5555"
    })
  end

  private

  def create_confirmed_user(user_params)
    u = User.new(user_params)
    u.skip_confirmation!
    u.save!
  end

  def create_unconfirmed_user(user_params)
    User.create!(user_params)
  end
end
