module Statistics
 extend ActiveSupport::Concern
    
def statistics
    
    ##### Members statistics ###
    scope :membership, -> { where("category = ?", "Adherent" || "organisation").order('created_at desc')}
    scope :monthlyActif, ->  { where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)}
    scope :weeklyActif, ->  { where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)}
    
    ##### Campagnes statistics #######
    
    
    #####  statistics #######
end

end