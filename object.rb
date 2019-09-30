class Smartphone
  # 属性の定義

  #インスタンス変数を読み書きするためのアクセサメソッド。
  attr_accessor :manufacture, :color, :storage
  # inithalizeメソッド…オブジェクトが作成される時に自動的に呼び出される
  # 必ず実行したい処理（初期化など）を、メソッドを呼び出すことなく実行することができる
  def initialize(manufacture, color, storage)
    # インスタンス生成時に与えられた値（属性の内容）をインスタンス変数に保存
    @manufacture = manufacture
    @color = color
    @storage = storage
  end

  # 操作の定義
  def tel(name)
    puts "#{name}に電話をかける"
  end

  def email(name)
    puts "#{name}にメールを送る"
  end
  
  def picture
    puts "写真を撮る"
  end
end

# クラスからインスタンスを生成
smaho_1 = Smartphone.new("Apple", "black", 128)
smaho_2 = Smartphone.new("Google", "white", 64)

# スマホ１の属性
puts "-スマホ１-"
puts smaho_1.manufacture
puts smaho_1.color
puts smaho_1.storage

# スマホ２の属性
puts "-スマホ２-"
puts smaho_2.manufacture
puts smaho_2.color
puts smaho_2.storage

# インスタンスはクラスで定義した操作を行える
puts "-操作-"
smaho_1.tel("お母さん")
smaho_2.email("お父さん")
