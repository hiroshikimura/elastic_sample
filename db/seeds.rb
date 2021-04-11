# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = [
  {name: 'ティム・ブラウン'},
  {name: 'ジェームス・W・ヤング'},
  {name: 'エドワード・でボノ'},
  {name: '各務 太郎'},
  {name: 'ブライアン・カーニハン'},
  {name: 'Robert C. Martin'},
  {name: '結城 浩'},
  {name: 'アンソニー・ダン'},
  {name: 'フィオナ・レイビー'},
  {name: '徳丸 浩'},
  {name: 'Richard E.Smith'},
].map do |e|
  Author.create(e)
end

books = [
  {title: 'デザイン思考が世界を変える', description: '', isbn: '978-4-14-050407-b C0134', version: 8, released_at: Date.parse('2019/02/25')},
  {title: 'アイデアのつくり方', description: '', isbn: '978-4-484-88104-1', version: 73, released_at: Date.parse('2019/06/06')},
  {title: '水平思考の世界', description: '', isbn: '978-4-87771-337-9', version: 1, released_at: Date.parse('2015/11/08')},
  {title: 'デザイン思考の先を行くもの', description: '', isbn: '978-4-295-40247-3', version: 2, released_at: Date.parse('2018/12/13')},
  {title: '教養としてのコンピューターサイエンス', description: '', isbn: '978-4-82222-8873-0', version: 1, released_at: Date.parse('2020/02/25')},
  {title: 'Clean Agile', description: '', isbn: '978-4-04-893074-1', version: 1, released_at: Date.parse('2020/10/05')},
  {title: 'プログラマの数学 第２版', description: '', isbn: '978-4-7973-9545-7', version: 1, released_at: Date.parse('2018/01/22')},
  {title: 'スペキュラティブ・デザイン', description: '', isbn: '978-4-8025-1002', version: 4, released_at: Date.parse('2019/04/22')},
  {title: '体型的に学ぶ 安全なウェブアプリケーションの作り方', description: '', isbn: '978-4-7973-6119-3', version: 6, released_at: Date.parse('2012/06/29')},
  {title: '認証技術 パスワードから公開鍵まで', description: '', isbn: '4-284-06516-2', version: 1, released_at: Date.parse('2001/04/25')},
].map do |e|
  Book.create(e)
end

[
  {book: 0, author: 0},
  {book: 1, author: 1},
  {book: 2, author: 2},
  {book: 3, author: 3},
  {book: 4, author: 4},
  {book: 5, author: 5},
  {book: 6, author: 6},
  {book: 7, author: 7},
  {book: 7, author: 8},
  {book: 8, author: 9},
  {book: 9, author: 10},
].map do |e|
  BooksAuthor.create(book: books[ e[:book] ], author: authors[ e[:author] ])
end
