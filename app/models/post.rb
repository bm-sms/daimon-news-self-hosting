class Post < ActiveRecord::Base
  attachment :thumbnail # TODO 何枚でも登録できるようにする
end
