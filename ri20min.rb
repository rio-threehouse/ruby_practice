class MegaGreeter
  attr_accessor :names
  
  #create the object オブジェクトを作る
  def initialize(names = "ピカチュウ")
    @names = names
  end

  # 全員に「出てこい!」と言う
  def say_hi
    if @names.nil?
      puts "..."
    # each = に配列複数要素が入っていたら、要素を１つずつ順番に取り出す
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "出てこい! #{name}!"
      end
    # namesの要素が１つならその要素を呼び出す
    else
      puts "出てこい! #{@names}!"
    end
  end
  
  # 全員に「もどれ！」を言う
  def say_bye
    if @names.nil?
      puts "..."
    # join = 配列に複数要素が入っていたら、引数を区切り文字として結合した文字列を返す
    elsif @names.respond_to?("join")
      puts "もどれ！ #{names.join(",")}!"
    else
      puts "もどれ！ #{@names}!"
    end
  end
end

# 直接スクリプトで実行した時のみ実行される __File__ = スクリプトのファイル名、$0 = 実行したスクリプトのファイル名
if __FILE__ == $0
  # @namesになにも入れない
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  #@namesに"イーブイ"を入れる
  mg.names = "イーブイ"
  mg.say_hi
  mg.say_bye

  # @namesに"ヒトカゲ","フシギダネ","ゼニガメ"を入れる
  mg.names = ["ヒトカゲ","フシギダネ","ゼニガメ"]
  mg.say_hi
  mg.say_bye
end
