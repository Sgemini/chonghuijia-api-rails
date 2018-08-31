# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# gender 0 == boy, 1 == girl

dogs = [
  {
    name: '嘎仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '开朗亲人，是个安静的美男子，喜欢上街，自带握手技能。',
    is_adopted: true
  },

  {
    name: '莹莹',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'small',
    description: '喜欢和小伙伴玩，比较粘人，性格亲人。',
    is_adopted: false
  },

  {
    name: '排骨',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '非常听话，不吵闹，非常渴望你的抚摸。',
    is_adopted: false
  },

  {
    name: 'Good Boy',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '十分冷静，很听话。',
    is_adopted: false
  },

  {
    name: '小熊',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '对人友善，亲人，喜欢和狗狗一起玩耍（曾得过狗瘟，现已痊愈，但腿有轻微的稍震）。',
    is_adopted: false
  },

  {
    name: '蛋黄',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '非常忠心的狗狗，听话，有跟随技能。',
    is_adopted: false
  },

  {
    name: '小岛',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'small',
    description: '活泼开朗，亲人，自带站立技能。',
    is_adopted: true
  },

  {
    name: '黑妹',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'small',
    description: '逛街专业户，出去溜达快活无比，回笼子却也能十分安静地戴着，照顾起来完全没难度。',
    is_adopted: false
  },

  {
    name: '单单',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'small',
    description: '活泼开朗（曾做过眼部手术，切除了左眼）特别享受别人摸。',
    is_adopted: false
  },

  {
    name: 'Tiger',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '非常忠心有性格的狗狗，稍微怕陌生人，属于美式秋田犬。',
    is_adopted: false
  },

  {
    name: '嘉宝',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '爱吃东西，喜欢玩照吃游戏，活泼。',
    is_adopted: false
  },

  {
    name: '黑皮',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '比较稳重，亲人，活泼开朗，经常亲人。',
    is_adopted: false
  },

  {
    name: '小黑',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '比较稳重，亲人，活泼开朗，经常亲人。',
    is_adopted: false
  },

  {
    name: '黑仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '乖，对人友善。',
    is_adopted: false
  },

  {
    name: 'whisky',
    gender: 'boy',
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '热情亲人，天生笑脸，可爱会请请。',
    is_adopted: true
  },

  {
    name: 'Beauty',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '曾经的越狱大王，现在性格渐趋稳定，不喜欢大部分的母狗，适合独养。',
    is_adopted: false
  },

  {
    name: '冬瓜',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '热情开朗，却也懂事黏人，黑黑的小眼珠告诉你她懂得感恩。',
    is_adopted: false
  },

  {
    name: '肥肥',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '文静，不吵闹，跟其他小伙伴一样喜欢吃喜欢外出喜欢讨摸摸。',
    is_adopted: false
  },

  {
    name: '哈哈',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '乖巧聪明，体型虽小，气度超大，能和任何狗和平相处。',
    is_adopted: false
  },

  {
    name: '黑妹',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '调皮好动，亲人，喜欢外出，爱干净。',
    is_adopted: false
  },

  {
    name: '康子',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '超级听话的大家姐，在患病的时候给一堆药都自觉地吃，毫无抗拒，性格超级温和。剪指甲洗澡梳毛，怎样弄都不会发火。',
    is_adopted: false
  },

  {
    name: '街霸',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'medium',
    description: '跟人打招呼直接干脆，抱抱躺下求扫肚子。上街活泼狂野，不爱叫。',
    is_adopted: false
  },

  {
    name: '咸湿仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '因为混有斗牛梗和比特犬的血统，对故意挑衅的狗攻击性很强，对人类却是完全一颗小孩子的心，爱逛街和爱无尽的撒娇。',
    is_adopted: false
  },

  {
    name: '咖啡',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '有着优良中华田园犬的特质，对主人温和忠心，看家护院起来坚定不妥协。',
    is_adopted: false
  },

  {
    name: '锋仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '对陌生人有戒备心，熟络后可以被任意抚摸。能和母狗和平共处，不喜欢公狗。爱干净，不会在笼子里拉便便。',
    is_adopted: false
  },

  {
    name: '恒仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '颜值高，懂给手，从野小子到可爱的小白脸，恒仔可说熬出头了。',
    is_adopted: false
  },

  {
    name: 'Benz',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '外型像小鲸鱼，自由奔放，超级可爱的嗲嗲小王子。',
    is_adopted: false
  },

  {
    name: '小宝',
    gender: 1,
    is_vaccined: true,
    is_sterilized: true,
    size: 'small',
    description: '爱逛街，性格活泼爱亲近人，能和任何狗和平共处。',
    is_adopted: false
  },

  {
    name: '蛋黄',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '温和的小帅哥，有人说他的样子长得像北美郊狼(coyote)。性格和善亲人，走路屁股一扭一扭的样子特别可爱。',
    is_adopted: false
  },

  {
    name: 'Lucky',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '越长越可爱的小伙子，身上还是BB般的绒毛，爱滚草地，义工们争相溜达的主角。',
    is_adopted: false
  },

  {
    name: '初四',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'big',
    description: '由于某年的年初四来到我们基地的原因，起名为：初四。敦厚的外型，小朋友的性格。爱逛街，喜欢和人熊抱，看到食物就完全控制不住自己。会听简单口令。',
    is_adopted: false
  },

  {
    name: '明仔',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '聪明听话，仿佛知道你心里在想什么，除了不喜欢公狗，照顾起来毫无难度。',
    is_adopted: false
  },

  {
    name: '怕怕',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '有着公主式的霸道，爱被摸头和抱抱。',
    is_adopted: false
  },

  {
    name: '乌嘴',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '馋嘴，有点小呱噪，对人友好，运动健将。',
    is_adopted: false
  },

  {
    name: '贝贝',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '高颜值先生，短腿迷你拉布拉多，有一丢丢的分离焦虑，爱像女孩子一样撒娇和求抱抱。',
    is_adopted: false
  },

  {
    name: 'Dina',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '不挑事，不打架，腿经外力所伤有点跛，但丝毫不影响走路，有所求的时候就会有意识的让你知道，活泼爱逛街。',
    is_adopted: false
  },

  {
    name: '小鹿',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '外型像鹿，所以取名为鹿。性格高冷，与人和善，但不喜欢公狗。',
    is_adopted: false
  },

  {
    name: 'nono',
    gender: 0,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '喜欢女孩子，不喜欢男人。兴奋时会原地跳得很高，食量有点小，熟悉后会很亲人。',
    is_adopted: false
  },

  {
    name: '吉吉',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '亲人的小短腿，爱运动，爱撒娇。',
    is_adopted: true
  },

  {
    name: '肥妹',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '狗妈妈唯一幸存的女儿，未满一岁，亲人，但是有点害羞。',
    is_adopted: false
  },

  {
    name: '路易',
    gender: 0,
    is_vaccined: true,
    is_sterilized: true,
    size: 'big',
    description: '体型略大，性格却是不折不扣的小朋友，爱玩爱闹爱撒娇，被责备后会定定的望着你然后给一个大大的熊抱。',
    is_adopted: false
  },

  {
    name: '狗妈',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'medium',
    description: '性格斯文淡定(除了见到猫)，躺下时永远交叉双手，听话不爱叫，完美的陪伴犬。',
    is_adopted: false
  },

  {
    name: '丁香',
    gender: 1,
    is_vaccined: true,
    is_sterilized: false,
    size: 'small',
    description: '蝴蝶犬串，有点害羞，还在适应阶段。',
    is_adopted: false
  }
]

dogs.each do |d|
  # if Animal.find_by(name: d[:name])
  #   # Animal.create(name: d.name, gender: d.gender, is_sterilized: d.is_sterilized, is_vaccined: d.is_vaccined, size: d.size, description: d.description)
  #   Animal.update(d)
  # else
  #   Animal.create(d)
  # end
  Animal.create(d)
end