class Admin::Son < ActiveRecord::Base
  belongs_to :admin_father, class_name: "Admin::Father", foreign_key: :admin_father_id
end
