class Admin::Son < ActiveRecord::Base
  belongs_to :admin_father, class_name: "Admin::Father", foreign_key: :father_id
end
