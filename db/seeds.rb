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
User.create!(:email => "admin@163.com", :password => "123456", :password_confirmation => "123456", :is_admin => "true")
Medicine.create!(:name => "Cefathiamidine for Injection", :strength => "0.5g", :dosage_form => "powder for injection", :approval_number => "国药准字H20103656", :approval_date => "2015-11-16", :category => "Chemical", :factoryname => "Yuekang", :manufacturer_id => "1", :price => "0.1")
Medicine.create!(:name => "Cefathiamidine for Injection", :strength => "1.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H20066568", :approval_date => "2016-02-15", :category => "Chemical", :factoryname => "Fuan", :manufacturer_id => "2", :price => "0.2")
Medicine.create!(:name => "Cefradine for Injection", :strength => "1.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H19993647", :approval_date => "2015-05-18", :category => "Chemical", :factoryname => "Reyoung", :manufacturer_id => "3", :price => "0.3")
Medicine.create!(:name => "Cefpirome Sulfate for Injection", :strength => "1.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H20064668", :approval_date => "2016-03-16", :category => "Chemical", :factoryname => "Reyoung", :manufacturer_id => "3", :price => "0")
Medicine.create!(:name => "Cefepime Hydrochloride for Injection", :strength => "1.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H20080106", :approval_date => "2013-03-07", :category => "Chemical", :factoryname => "Reyoung", :manufacturer_id => "3", :price => "0")
Medicine.create!(:name => "Ceftriaxone Sodium for Injection", :strength => "2.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H20013189", :approval_date => "2015-05-18", :category => "Chemical", :factoryname => "Reyoung", :manufacturer_id => "3", :price => "0")
Medicine.create!(:name => "Cefonicid Sodium for injection", :strength => "1.0g", :dosage_form => "powder for injection", :approval_number => "国药准字H20045461", :approval_date => "2015-05-18", :category => "Chemical", :factoryname => "Reyoung", :manufacturer_id => "3", :price => "0")
Medicine.create!(:name => "Amoxicillin Capsule", :strength => "0.25g", :dosage_form => "capsules", :approval_number => "国药准字H31020838", :approval_date => "42214", :category => "Chemical", :factoryname => "Shanghai Fuda", :manufacturer_id => "4", :price => "0.5")
