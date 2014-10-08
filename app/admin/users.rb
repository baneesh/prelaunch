ActiveAdmin.register User do
	# index do
 #    column "Reffrals" do |user|
 #       user.referrals.count
 #    end

 csv do
    column :id
    column('Email') { |user| user.email }
    column('Number of Referals') { |user|  user.referrals.count }
    column('Referal Emails') { |user|  user.referrals.collect{|re| re.email}.join(",")}
  end

 index do                            
    column :id                     
    column :email        
    column :referral_code
    column "Reffrals" do |user|
      user.referrals.count
    end           
    column :created_at 
    column :updated_at             

    default_actions                    
  end  
 # actions  :show
end
