class Admin::Father < ActiveRecord::Base
  has_many :admin_son, class_name: "Admin::Son"
end
