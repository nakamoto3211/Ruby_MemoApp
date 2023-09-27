require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  fail_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "終了時はctrl+Dを入力します"
  puts "----------------------"
  CSV.open("#{fail_name}.csv","w") do |csv|
    csv << readlines
  end
  
elsif memo_type == 2
  puts "既存のファイルを編集します"
  puts "拡張子を除いたファイル名を入力してください"
  fail_name = gets.chomp
  puts "終了時はctrl+Dを入力します"
  puts "----------------------"
  CSV.open("#{fail_name}.csv","a") do |csv|
    csv << readlines
  end
  
else
  puts "1か2を入力してください。"
end