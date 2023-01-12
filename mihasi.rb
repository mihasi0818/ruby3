def main
 #！つける理由が分かりません
 while !GAME()
 end
end
def GAME
 janken = JANKEN()
 if janken == 2
   puts "あいこで.."
   return false
 end
 
 if !AIKO()
   puts "もう一度"
   return false
 end
      #janken
 if janken == 1
   puts "勝った！"
 else
   puts "負けた"
 end
 return true
end
     #じゃんけんの選択
def JANKEN
 puts "じゃんけん..."
 choices = ["グー", "チョキ", "パー"]
 Message(choices)
 player_hand = gets.to_i
 program_hand = rand(choices.size)
 INFO(choices[player_hand], choices[program_hand])
 
 result = 0    #負け:0, 勝ち:1, あいこ:2
 if player_hand == program_hand
   result = 2
 elsif ((player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0))
   result = 1
 end
 return result
end
  # 
def AIKO
 puts "あっち向いて〜"
 choices = ["上", "下", "左", "右"]
 Message(choices)

 player_direction = gets.to_i
 program_direction = rand(choices.size)
 INFO(choices[player_direction], choices[program_direction])

 return (player_direction == program_direction)
end

def Message(choices)
 numChoices = choices.size
 for i in 0..(numChoices-1) do
   puts i.to_s + "(" + choices[i] + ")"
 end
end

def INFO(playerChoiceString, programChoiceString)
 puts "ホイ！"
 separator = "------------------------"
 puts separator
 puts "あなた：#{playerChoiceString}"
 puts "相手：#{programChoiceString}"
 puts separator
end
main()