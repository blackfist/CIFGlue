task :quicksearch => [:environment] do |t, args|
    puts "Searching for indicators against the #{Rails.env} database."
    begin
        puts "Opening #{ENV['infile']}"
        infile = File.open(ENV['infile'])
    rescue
        puts "Error #{$!}"
        exit
    end
    puts "Searching through #{Indicator.count} indicators in CIFGlue."
    infile.readlines.each do |ind|
        ind = ind.strip
        @instances = Indicator.where(:content => ind)
        if @instances.all.count > 0
            puts ind
            @instances.each do |instance|
                puts "\t#{instance.case},#{instance.alternateid}"
            end
        end
    end
end
