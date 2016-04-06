# -*- encoding : utf-8 -*-
OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
    :provider => 'twitter',
    :uid => '70706139',
    :info => { :nickname => 'rr_martins',
               :name => 'Rodrigo Martins',
               :location => 'Rio de Janerio - RJ',
               :image => 'http://a0.twimg.com/profile_images/2445847722/6a69ludt45lf4yn2zhhf_normal.png',
               :description => "Cristão, estudante eterno, desenvolved, entusiasta de muitas coisas e amante da vida e da @natali_altoe  e faltando poucos chars. acesse meu blog e conheça mais",
               :urls => {:Website => 'http://rrmartins.github.com',
                         :Twitter => 'http://twitter.com/rr_martins'}
              },
    :credentials => { :token => '70706139-rpXFvzinHJoP9LW1sbRu5C7HMtmpeGw2Z4ifyOxAQ',
                      :secret => 'jKYz4wbnLRWbjTKLbDoQoFLH7mmnbvheQ9CQY7E'}
  })