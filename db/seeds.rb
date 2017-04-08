# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.create!(:name => "Yuekang", :address => "Beijing", :description => "Yuekang has Germany GMP", :contact_person => "Mr. Wang", :phone => "010-87443214", :email => "yuekang@163.com", :website => "http://www.youcareyk.com/")
Manufacturer.create!(:name => "Fuan", :address => "Fujian", :description => "main products are APIs", :contact_person => "Mr. zhang", :phone => "0592-33456677", :email => "fuan@163.com", :website => "http://www.fapharm.com/company_qyt/")
Manufacturer.create!(:name => "Reyoung", :address => "Shandong", :description => "reyoung's main products are cephalosporins", :contact_person => "Wang shijun", :phone => "0530-34123456", :email => "reyoung@163.com", :website => "http://en.reyoung.com/")
Manufacturer.create!(:name => "Shanghai Fuda", :address => "Shanghai", :description => "unknown manufacturer", :contact_person => "Liu", :phone => "021-57410209", :email => "fuda@163.com", :website => "http://www.pharmnet.com.cn/company/52262/")
