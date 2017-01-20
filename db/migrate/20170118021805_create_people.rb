class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :profile_photo_url
      t.string :title
      t.string :company_or_school
      t.string :email
      t.string :address
      t.string :linkedin_url
      t.string :github_url
      t.string :facebook_url
      t.string :google_plus_url
      t.string :wechat_qrcode_url
      t.text :description

      t.timestamps
    end
  end
end
