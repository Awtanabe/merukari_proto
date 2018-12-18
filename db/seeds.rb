# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
### 記事


Product.create(name: Faker::Name.name, price:Faker::Number.unique.number(4), description: Faker::Lorem.sentence)


基本的なseedの流し方
https://www.javadrive.jp/rails/model/index10.html#section2

Fakerを使ったseedの流し方
https://qiita.com/naoge/items/95565a020c871e69d778
gem 'faker'


1  場所：see.rb
2  作り方：下記
3  実行コマンド：rake db:seed


### 作り方

#### シンプル

Title.create(:name => '観察日記', :sales_date => '2011-11-14', :price => 1000)
Title.create(:name => 'Simple Life', :sales_date => '2012-02-08', :price => 2300)
Title.create(:name => 'メガネ入門', :sales_date => '2011-10-25', :price => 800)

#### Fakerを使う

100.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               )
end

#### 大量データ

5.times do |no|
  Title.create(:name => "タイトル #{no}")
end


#### CSVからのseed

require "csv"

CSV.foreach('db/sample.csv') do |row|
  Title.create(:name => row[0], :sales_date => row[1], :price => row[2])
end
