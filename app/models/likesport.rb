class Likesport < ActiveHash::Base
  self.data = [
   { id: 0, name: '--' },{ id: 1, name: '野球' },{ id: 2, name: 'サッカー' },
   { id: 3, name: 'バスケットボール' },{ id: 4, name: 'バレーボール' },{ id: 5, name: 'ラグビー' },
   { id: 6, name: 'テニス' },{ id: 7, name: 'ゴルフ' },{ id: 8, name: '卓球' },
   { id: 9, name: 'フットサル' },{ id: 10, name: 'その他' }
 ]
end
