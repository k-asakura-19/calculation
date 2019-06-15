class Food
    # ここにクラスの定義を書き加えてください
    @@counter = 0
    @@foods = []
  
    #attr_accessor :name
    #attr_accessor :calorie
    
    
    
    def self.input
        
        puts "「料理名を入力してください」"
        @@food_name = gets.chomp
        
        puts "「カロリーを入力してください」"
        @@food_calorie = gets.chomp.to_i
        
        @@foods[@@counter] = {name: @@food_name,calorie: @@food_calorie}
        @@counter += 1
        
        puts "「入力完了しました」"
        
    end
     
     
     
     def self.show_all_calory
         
         puts "-----------------------------"
         
         @@foods.each do|food|
            puts "#{food[:name]}   :#{food[:calorie]}kcal"
        end
         
         puts "-----------------------------"
         
         sleep 0.5
         print "計算中"
         sleep 0.5
         print "."
         sleep 0.5
         print "."
         sleep 0.5
         puts "."
         sleep 1
         
         #カロリー計算その１
         
         puts "カロリー合計：　#{@@foods.inject(0) {|sum, hash| sum + hash[:calorie]}}kcal"
         
         #カロリー計算その２
         
         @@sum =0   
         @@foods.each do|food_cal|
              @@sum += food_cal[:calorie]
             
        end
         
        puts "カロリーの合計は#{@@sum}kcalです」"
        sleep 0.5
        
        if @@sum >= 2000
            puts "「超高カロリーです」"
        elsif @@sum >= 1000 && @@sum < 2000
            puts "「高カロリーです」"
        elsif @@sum >= 500 && @@sum < 1000
            puts "「カロリーは普通です」"
        elsif @@sum >= 0 && @@sum < 500
            puts "「カロリーは少なめです」"
        else
            puts "「カロリーがマイナスです。ありえません」"
        end
        
         
     end
    
    
    
    
end


puts "「カロリー計算プログラムへようこそ！」"

while true do
   puts "[0]:カロリーを入力する"
   puts "[1]:カロリーの合計を見る"
   input = gets.to_i

   if input == 0
       
     Food.input           # カロリーの入力
   elsif input == 1
     Food.show_all_calory # カロリーの合計を表示
     exit
   end
end





#料理名を入力してください:
#スパゲティ
#カロリーを入力してください:
#720
#カロリー合計表示画面

#-----------------------------
#メロンパン  :430kcal
#スパゲティ  :720kcal
#バナナ  :80kcal
#-----------------------------
#カロリー合計  :1230kcal