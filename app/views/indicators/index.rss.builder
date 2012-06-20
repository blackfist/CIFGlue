xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
    xml.channel do
        xml.title "Verizon Case Indicators"
        xml.description "Indicators collected from Verizon intelligence"
        xml.link indicators_url

        @indicators.each do |i|
            xml.item do
                xml.indicator i.content
                xml.caseid i.case
                xml.description i.description
                xml.analyst i.analyst
                xml.date    i.created_at
            end
        end
    end
end
