# Teamクラスに各チームの「4つの変数」
class Team
  attr_accessor :name, :win, :lose, :draw

# initialize の処理の定義：各インスタンス変数（名前・勝ち数・負け数・引き分け数）を初期化できるように設定
  def initialize(name,win,lose,draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

# 勝率＝ 勝ち数/(勝ち数+負け数)
  def calc_win_rate
   @win.to_f / (@win + @lose)   # return の省略
  end

#チーム成績をターミナルに表示
  def show_team_result
    puts "#{@name}の2020年の成績は、#{@win}勝#{@lose}敗#{@draw}分、勝率は#{self.calc_win_rate}です。"
  end
end

Giants      = Team.new('Giants',67,45,8)           # 引数による初期化
Tigers      = Team.new('Tigers',60,53,7)           # 引数による初期化
Dragons     = Team.new('Dragons',60,55,5)         # 引数による初期化
Baystars    = Team.new('Baystars',56,58,6)       # 引数による初期化
Carp        = Team.new('Carp',52,56,12)              # 引数による初期化
Swallows    = Team.new('Swallows',41,69,10)       # 引数による初期化

Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
Baystars.show_team_result
Carp.show_team_result
Swallows.show_team_result






