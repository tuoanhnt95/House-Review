# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'Removing the apartments'
Apartment.destroy_all
puts 'Removing the buildings'
Building.destroy_all
puts 'Removing the experience types'
ExperienceType.destroy_all
puts 'Removing the Japanese levels'
JapLvl.destroy_all
puts 'Removing the travel methods'
TravelMethod.destroy_all
puts 'Removing the municipalities'
Municipality.destroy_all
puts 'Removing the prefectures'
Prefecture.destroy_all

# ===================== 47 prefectures =====================
puts 'Creating prefectures'
prefectures = Prefecture.create(
  [
  #  {
  #   'prefecture_code': '01',
  #   'name_jpn': '北海道',
  #   'name': 'Hokkaido'
  # }, {
  #   'prefecture_code': '02',
  #   'name_jpn': '青森県',
  #   'name': 'Aomori'
  # }, {
  #   'prefecture_code': '03',
  #   'name_jpn': '岩手県',
  #   'name': 'Iwate'
  # }, {
  #   'prefecture_code': '04',
  #   'name_jpn': '宮城県',
  #   'name': 'Miyagi'
  # }, {
  #   'prefecture_code': '05',
  #   'name_jpn': '秋田県',
  #   'name': 'Akita'
  # }, {
  #   'prefecture_code': '06',
  #   'name_jpn': '山形県',
  #   'name': 'Yamagata'
  # }, {
  #   'prefecture_code': '07',
  #   'name_jpn': '福島県',
  #   'name': 'Fukushima'
  # }, {
  #   'prefecture_code': '08',
  #   'name_jpn': '茨城県',
  #   'name': 'Ibaraki'
  # }, {
  #   'prefecture_code': '09',
  #   'name_jpn': '栃木県',
  #   'name': 'Tochigi'
  # }, {
  #   'prefecture_code': '10',
  #   'name_jpn': '群馬県',
  #   'name': 'Gunma'
  # },
  {
    'prefecture_code': '11',
    'name_jpn': '埼玉県',
    'name': 'Saitama'
  },
  # {
  #   'prefecture_code': '12',
  #   'name_jpn': '千葉県',
  #   'name': 'Chiba'
  # },
  {
    'prefecture_code': '13',
    'name_jpn': '東京都',
    'name': 'Tokyo'
  },
  # {
  #   'prefecture_code': '14',
  #   'name_jpn': '神奈川県',
  #   'name': 'Kanagawa'
  # },
  # {
  #   'prefecture_code': '15',
  #   'name_jpn': '新潟県',
  #   'name': 'Niigata'
  # }, {
  #   'prefecture_code': '16',
  #   'name_jpn': '富山県',
  #   'name': 'Toyama'
  # }, {
  #   'prefecture_code': '17',
  #   'name_jpn': '石川県',
  #   'name': 'Ishikawa'
  # }, {
  #   'prefecture_code': '18',
  #   'name_jpn': '福井県',
  #   'name': 'Fukui'
  # }, {
  #   'prefecture_code': '19',
  #   'name_jpn': '山梨県',
  #   'name': 'Yamanashi'
  # }, {
  #   'prefecture_code': '20',
  #   'name_jpn': '長野県',
  #   'name': 'Nagano'
  # }, {
  #   'prefecture_code': '21',
  #   'name_jpn': '岐阜県',
  #   'name': 'Gifu'
  # }, {
  #   'prefecture_code': '22',
  #   'name_jpn': '静岡県',
  #   'name': 'Shizuoka'
  # }, {
  #   'prefecture_code': '23',
  #   'name_jpn': '愛知県',
  #   'name': 'Aichi'
  # }, {
  #   'prefecture_code': '24',
  #   'name_jpn': '三重県',
  #   'name': 'Mie'
  # }, {
  #   'prefecture_code': '25',
  #   'name_jpn': '滋賀県',
  #   'name': 'Shiga'
  # },
  # {
  #   'prefecture_code': '26',
  #   'name_jpn': '京都府',
  #   'name': 'Kyoto'
  # }, {
  #   'prefecture_code': '27',
  #   'name_jpn': '大阪府',
  #   'name': 'Osaka'
  # },
  # {
  #   'prefecture_code': '28',
  #   'name_jpn': '兵庫県',
  #   'name': 'Hyogo'
  # }, {
    # 'prefecture_code': '29',
    # 'name_jpn': '奈良県',
    # 'name': 'Nara'
  # }, {
  #   'prefecture_code': '30',
  #   'name_jpn': '和歌山県',
  #   'name': 'Wakayama'
  # }, {
  #   'prefecture_code': '31',
  #   'name_jpn': '鳥取県',
  #   'name': 'Tottori'
  # }, {
  #   'prefecture_code': '32',
  #   'name_jpn': '島根県',
  #   'name': 'Shimane'
  # }, {
  #   'prefecture_code': '33',
  #   'name_jpn': '岡山県',
  #   'name': 'Okayama'
  # }, {
  #   'prefecture_code': '34',
  #   'name_jpn': '広島県',
  #   'name': 'Hiroshima'
  # }, {
  #   'prefecture_code': '35',
  #   'name_jpn': '山口県',
  #   'name': 'Yamaguchi'
  # }, {
  #   'prefecture_code': '36',
  #   'name_jpn': '徳島県',
  #   'name': 'Tokushima'
  # }, {
  #   'prefecture_code': '37',
  #   'name_jpn': '香川県',
  #   'name': 'Kagawa'
  # }, {
  #   'prefecture_code': '38',
  #   'name_jpn': '愛媛県',
  #   'name': 'Ehime'
  # }, {
  #   'prefecture_code': '39',
  #   'name_jpn': '高知県',
  #   'name': 'Kochi'
  # }, {
  #   'prefecture_code': '40',
  #   'name_jpn': '福岡県',
  #   'name': 'Fukuoka'
  # }, {
  #   'prefecture_code': '41',
  #   'name_jpn': '佐賀県',
  #   'name': 'Saga'
  # }, {
  #   'prefecture_code': '42',
  #   'name_jpn': '長崎県',
  #   'name': 'Nagasaki'
  # }, {
  #   'prefecture_code': '43',
  #   'name_jpn': '熊本県',
  #   'name': 'Kumamoto'
  # },
  {
    'prefecture_code': '44',
    'name_jpn': '大分県',
    'name': 'Ota'
  }
  # , {
  #   'prefecture_code': '45',
  #   'name_jpn': '宮崎県',
  #   'name': 'Miyazaki'
  # }, {
  #   'prefecture_code': '46',
  #   'name_jpn': '鹿児島県',
  #   'name': 'Kagoshima'
  # }, {
  #   'prefecture_code': '47',
  #   'name_jpn': '沖縄県',
  #   'name': 'Okinawa'
  # }
  ]
)
puts "#{Prefecture.count} prefectures created..."
puts '====================='
puts '====================='
puts '====================='

# =====================  municipalities =====================
puts 'Creating municipalities'
url_city = 'https://www.land.mlit.go.jp/webland/api/CitySearch?area='
url_city_en = 'https://www.land.mlit.go.jp/webland_english/api/CitySearch?area='

prefectures.each do |prefecture|
  municipal_serialized = URI.open(url_city + prefecture.prefecture_code).read
  municipal_serialized_en = URI.open(url_city_en + prefecture.prefecture_code).read
  municipals = JSON.parse(municipal_serialized)['data']
  municipals_en = JSON.parse(municipal_serialized_en)['data']
  puts municipals

  municipals.map do |municipal|
    muni = Municipality.create(
      'name': municipals_en.find { |m| m['id'] == municipal['id'] }['name'],
      'name_jpn': municipal['name'],
      'prefecture_id': prefecture.id,
      'municipality_code': municipal['id']
    )
    puts muni
  end
  puts "#{Municipality.count} municipalities created..."
  puts '====================='
  puts '====================='
  puts '====================='
end

# ===================== travel methods =====================
puts 'Creating travel methods'
TravelMethod.create(
  [
    { name: 'walk' },
    { name: 'bicycle' },
    { name: 'bus' },
    { name: 'others' }
  ]
)
puts "#{TravelMethod.count} travel methods created..."
puts '====================='
puts '====================='
puts '====================='

# ===================== Japanese level =====================
puts 'Creating Japanese levels'
JapLvl.create(
  [
    { level: 'No Proficiency' },
    { level: 'Elementary' },
    { level: 'Limited Working' },
    { level: 'Professional Working' },
    { level: 'Full Professional' },
    { level: 'Native / Bilingual' }
  ]
)
puts "#{JapLvl.count} Japanese levels created..."
puts '====================='
puts '====================='
puts '====================='

# ===================== Experience types =====================
puts 'Creating experience types'
ExperienceType.create(
  [
    { experience_type: 'Real estate agent contacted landlord' },
    { experience_type: 'Viewed room' },
    { experience_type: 'Completed paperwork, paid initial fees' },
    { experience_type: 'Living' },
    { experience_type: 'Moved out' }
  ]
)
puts "#{ExperienceType.count} experience types created..."
puts '====================='
puts '====================='
puts '====================='
