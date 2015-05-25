class Admin::Father < ActiveRecord::Base
  has_many :admin_sons, class_name: "Admin::Son"
end
