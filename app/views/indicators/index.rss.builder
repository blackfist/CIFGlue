xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
    xml.channel do
        xml.title Settings::ORGNAME + " Case Indicators"
        xml.description "Indicators collected from " + Settings::ORGNAME + " intelligence."
        xml.link indicators_url

        @indicators_consumable.each do |i|
            xml.item do
                xml.indicator i.content
                if i.class.to_s == "MalwareIndicator"
                   xml.md5sum i.md5sum
                   xml.ipaddress i.ipaddress
                end
                xml.title i.content + " [" + i.case + "]"
                xml.caseid i.case
                xml.alternateid i.alternateid
                xml.date    i.created_at.strftime('%Y-%m-%dT%H:%M:%SZ')
                xml.privacy i.Privacy
                xml.category i.category.name
                xml.cif_impact i.category.impact
                xml.link    indicator_url(i)
                xml.guid    indicator_url(i)
            end
        end
    end
end
