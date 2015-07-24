# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string(100)
#  cost_price          :decimal(10, )
#  sale_price          :decimal(10, )
#  long_description    :string(200)
#  observation         :text(65535)
#  product_category_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :product_category
  #validates :name, :cost_price , :sale_price,  presence: true
  
  validates_presence_of :name, :message => '^ Ingrese el nombre del producto.'
  validates_presence_of :cost_price, :message => '^ Ingrese el precio de costo.'
  validates_presence_of :sale_price, :message => '^ Ingrese el precio de venta'
  validates :name, uniqueness: true
  
  
end
