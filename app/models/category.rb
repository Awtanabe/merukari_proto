class Category < ActiveRecord::Base
 enum category_type:{mens: 0,ladies:1,book:2,item:3}
 has_many :products
end
