class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.datetime :report_timestamp
      t.string :report_id
      t.string :report_type
      t.string :report_status

      t.timestamps
    end
  end
end
