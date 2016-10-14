#  user,unread,finished,purchase_planテーブルのテストデータを作成するファイル

def addBookshelfs
  users = User.all
  users.each do |user|
  end
end
#  userテーブルの登録処理
#  user Hash型 値shelf_id, name, email
def addUser(user)
  User.create(book_id: user[:book_id], name: user[:name], maile: user[:maile])
end

#  user情報を作成する
#  number string型 数字
def createUser(number)
  rand_number = rand(0..100)
  name = 'member' + number
  user = {book_id: rand_number, name: name, maile: name + '@gmaile.com'}
  return user
end

#  usersテーブルにデータを入れる
def addUsres
  0.upto(10) do |number|
    number = (number + 1).to_s
    user = createUser(number)
    addUser(user)
  end
end

namespace :db do
  task testdata: :environment do
    puts "データを初期化中"
    #  既存のデータをリセット
    system( "bundle exec rake db:reset" )
    puts "新規データを追加中"
    addUsres
    addBookshelfs
    puts "完了"
  end
end



# #  誕生日の下限と上限
# MIN_DATE = Date.parse("1960/01/01").freeze
# MAX_DATE = Date.parse("1995/12/31").freeze
#
# namespace :db do
#
#   #  打刻時間を生成
#   #  days_ago Date型 打刻日の情報 xxxx-xx-xx
#   def createStamp(days_ago)
#     #  打刻時間は9:20~9:50の間でランダムに生成
#     day = days_ago.to_s + ' ' + '09:' + "#{Random.rand(20..50)}:" +
#       "#{format("%02d", Random.rand(0..59))}"
#     return day
#   end
#
#   # ランダムなカード固有識別子を生成
#   # 一意性は保証しないが重複する確率は低い
#   def randomIdm()
#     return SecureRandom.hex(8)
#   end
#
#   #  memberテーブルの登録処理
#   #  member Hash型 値name,nickname,email,birth_date,sex,reading,status
#   def addMember(member)
#     Member.create(name: member[:name], nickname: member[:nickname],
#     email: member[:email], birth_date: member[:birth_date], sex: member[:sex],
#     reading: member[:reading], status: member[:status])
#   end
#
#   #  member情報を作成する
#   #  number string型 数字
#   #  birth_date Date ランダムな生年月日
#   def createMember(number)
#     birth_date = Random.rand(MIN_DATE..MAX_DATE)
#     rand_number = rand(0..1)
#     sex = rand_number == 0 ? 'man' : 'woman'
#     status = rand_number == 0 ? 'enable' : 'disable'
#     name = 'member' + number
#     member = {
#       name: name, nickname: 'nik' + number, email: name + '@gmaile.com',
#       birth_date: birth_date, sex: sex, reading: rand_number, status: status
#     }
#     return member
#   end
#
#   #  テストデータの作成のメイン処理
#   task testdata: :environment do
#     puts "データを初期化中"
#     #  既存のデータをリセット
#     system( "bundle exec rake db:reset" )
#
#     puts "新規データを追加中"
#     #  memberテーブルの作成処理
#     #  作成する人数分のループ
#     0.upto(60) do |number|
#       number = (number + 1).to_s
#       member = createMember(number)
#       addMember(member)
#     end
#
#     #  recordテーブルの生成処理
#     memberes = Member.all
#     today = Date.today
#
#     #  本日から何日前までのデータを作成するか
#     days_ago = today - 10
#     loop {
#       memberes.each do |member|
#         Record.create(member_id: member.id, stamp: createStamp(days_ago), status: 'enable')
#       end
#       days_ago += 1
#       if days_ago == today
#         break
#       end
#     }
#
#     # カードを一人当たり1~3枚登録する
#     memberes.each { |member|
#       Random.rand(1 .. 3).times {
#         Card.create(member_id: member.id, idm: randomIdm(), status: 'enable')
#       }
#     }
#
#     puts '完了'
#   end

# end
