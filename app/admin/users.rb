ActiveAdmin.register User do
	# index do
 #    column "Reffrals" do |user|
 #       user.referrals.count
 #    end

 csv do
    column :id
    column('Email') { |user| user.email }
    column('Referral Code') { |user| user.referral_code }
    column('Referrals') { |user|  user.referrals.count }
    column('Created At') { |user| user.created_at }
    column('Updated At') { |user| user.updated_at }
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
