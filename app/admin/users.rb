ActiveAdmin.register User do
	# index do
 #    column "Reffrals" do |user|
 #       user.referrals.count
 #    end
 index do                            
    column :id                     
    column :email        
    column :referral_code
    column "Reffrals" do |user|
      user.referrals.count
    end           
    column :created_at 
    column :updated_at             

    actions :index, :show                
  end  
  
end
