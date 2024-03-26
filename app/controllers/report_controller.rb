class ReportController < ApplicationController

  def view1
  end

  def index
    @date = params[:date]
    @reports = Report.where('DATE(report_timestamp) = ?', @date.to_date).group(:report_id).order('COUNT(report_id) DESC').limit(10)
  end
end
