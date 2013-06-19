class Archive < ActiveRecord::Base
  belongs_to :users
  attr_accessible :file, :user_id
  mount_uploader :file, FileUploader
  
  def self.open_spreadsheet(file)
    case File.extname(file.to_s)
    when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
  
  def self.import(file)
    puts "wtf  1"
    spreadsheet = open_spreadsheet(file)
    puts "wtf  2"
    spreadsheet.default_sheet = "Perspective1"
    @perspectives_array = []
    @objectives_array = []
    @kpi_indicators_array = []
    @indicators_array = []
    @archivearray = []
    header = spreadsheet.row(1)
    
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        
          case (row["Nivel"].to_s.size)
            when 1
              @perspectives_array << row
            when 3
              @objectives_array << row
            when 5
              @kpi_indicators_array << row    
            when 7      
              @indicators_array << row      
          end
                
        end
       #-------------------- PERSPECTIVAS --------------------------
        @persfiltered = []
        @persfiltered << @perspectives_array.first
        @perspectives_array.each do |i|
          if @persfiltered.detect {|f| f["name"] == i["name"] } == nil
            @persfiltered << i
          end
        end
        puts @persfiltered
       
       #-------------------- OBJETIVOS -------------------------- 
        @objecfiltered = []
        @objecfiltered << @objectives_array.first
        @objectives_array.each do |i|
     
          if @objecfiltered.detect {|f| f["name"] == i["name"] } == nil
            @objecfiltered << i        
          end
        end
        puts @objecfiltered
        
        #-------------------- KPI --------------------------
        # @kpifiltered = []
        # @kpifiltered << @kpi_indicators_array.first
        # @kpi_indicators_array.each do |i|
#      
          # if @kpifiltered.detect {|f| f["name"] == i["name"] } == nil
            # @kpifiltered << i        
          # end
        # end
        # puts @kpifiltered
        
        
        
       # @archivearray << row
     
        # product = find_by_id(row["id"]) || new
        # puts "wtf3"
        # product.attributes = row.to_hash.slice(*accessible_attributes)
        # puts "wtf4"
        # product.save!
        # puts "wtf5"
      #puts @persfiltered
        
      return @perspectives_array, @objectives_array, @kpi_indicators_array, @indicators_array
      
    end
   # puts @archivearray
    #@archivearray = {:Perspectives => @perspectives_array, :Objectives => @objectives_array, :KPI => @kpi_indicators_array, :PI => @indicators_array}
    
    #@archivearray
  
  
end
