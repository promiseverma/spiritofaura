class CreateTrackUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :track_users do |t|
      t.string :ip_address

      t.timestamps
    end
  end
end
