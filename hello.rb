require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  memo_text = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したら Enter を押します"
  memo_row = gets.chomp
  CSV.open("#{memo_text}.csv","w")do |row|
  row << ["#{memo_row}"]
  puts "新規メモを作成しました"
  end

elsif memo_type == 2
  puts "拡張子を除いた既存のファイル名を記入してください"
  memo_text = gets.chomp
  CSV.foreach("#{memo_text}.csv") do |row|
    p row[0]
  end
  puts  "メモの上書き内容を記入してください"
  memo_row = gets.chomp
  CSV.open("#{memo_text}.csv","w")do |row|
    row << ["#{memo_row}"]
  puts "上書きが完了しました"
  end

else puts "終了します"
end
  
 
 
  
