# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'
puts 'Destroy all datas'
Report.destroy_all

puts 'Importing data'
file_path = 'db/report.csv'
CSV.foreach(file_path) do |row|
  Report.create!(report_timestamp: row[0].to_datetime, report_id: row[1], report_type: row[2], report_status: row[3])
end

puts 'Data import successed'
