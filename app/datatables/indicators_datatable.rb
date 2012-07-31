class IndicatorsDatatable
  include Rails.application.routes.url_helpers
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Indicator.count,
      iTotalDisplayRecords: indicators.total_entries,
      aaData: data
    }
  end

private

  def data
    indicators.map do |indicator|
      [
        link_to(indicator.content, indicator_path(indicator.becomes(Indicator))),
        h(indicator.case),
        h(indicator.description),
        h(indicator.analyst),
        link_to("<i class='icon-pencil icon-white'></i>".html_safe, edit_indicator_path(indicator), :class => 'btn btn-mini') + 
        link_to("<i class='icon-trash icon-white'></i>".html_safe, 
                indicator_path(indicator.becomes(Indicator)), 
        :method => :delete, 
                :confirm => 'Are you sure you want to delete this indicator?',
                :class => 'btn btn-mini btn-danger')
      ]
    end
  end

  def indicators 
    @indicators ||= fetch_indicators
  end

  def fetch_indicators
    #indicators = Indicator.by_type(params[:type]).order("#{sort_column} #{sort_direction}")
    indicators = Indicator.by_type(params[:type]).order("indicators.#{sort_column} #{sort_direction}")
    indicators = indicators.page(page).per_page(per_page)
    if params[:sSearch].present?
      indicators = indicators.where("indicators.content like :search or indicators.case like :search or indicators.description like :search or indicators.analyst like :search", search: "%#{params[:sSearch]}%")
    end
    indicators 
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[content case description analyst]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
