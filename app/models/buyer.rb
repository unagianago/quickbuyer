class Buyer < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Gulliver', category_id: 1,
      url: 'https://221616.com/nlp/sell/robot_a067/ADS_221616-206-KAIZEN201908_b.html?utm_source=google&utm_medium=cpc&utm_campaign=satei_troas&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVDi06RPLxa3Sg5wZeR45becCl-bqOB8CkNttfsBuwE9PqT_z5lpdqRoCOJsQAvD_BwE&gclsrc=aw.ds' },
    { id: 2, name: 'みずほ不動産販売', category_id: 2,
      url: 'https://www.mizuho-re.co.jp/sellers/?gclid=CjwKCAjwyJqzBhBaEiwAWDRJVBUG2vVKB1iyVSLlh8RvnkNfJYDE7Te0A207J6I18xeKZM32NL_ubRoCsaEQAvD_BwE&utm_source=google&utm_medium=cpc&utm_campaign=ggsc_big_sellers_2402&utm_term=ggsc_big_sellers_2402&utm_content=1002_sellers&gad_source=1' },
    { id: 3, name: 'TAKAGAI', category_id: 3,
      url: 'https://kaitori-takagai.com/kaden_detail/?gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVK-MvSMHlpksMLZkZ2JqmAKM-O0LWumM1M4m2RYuHt89CMxHp-1BkBoCSKkQAvD_BwE' },
    { id: 4, name: 'エコ', category_id: 4,
      url: 'https://2nd-kaitori.com/10chigasaki/?gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVMBxspyYA6YgMadBKSUPCIZNEuU-9VMP_K8X2xQjgbq5220b8vovThoCG9YQAvD_BwE' },
    { id: 5, name: 'エコスタイル', category_id: 5,
      url: 'https://www.style-eco.com/shop/jiyugaoka/jiyugaoka_youhukukaitori.html?utm_source=google&utm_medium=cpc&utm_term=%E6%B4%8B%E6%9C%8D%20%E5%A3%B2%E3%82%8B&utm_campaign=shinsaibashi_tenpo_youfuku&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVLM6UbbzpIvP4ourqTBfnCpA-NheAXZODyRgypf4tK_Bd8tg20g2QxoCwU4QAvD_BwE' },
    { id: 6, name: 'さのや', category_id: 7,
      url: 'https://www.sanoya.co.jp/kaitori/?gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVP7do3XtIP3vTu4KaLy1Zy-ICR2RXT50yIeX7riyuMbUCaGHKesiiRoCQTwQAvD_BwE' },
    { id: 7, name: 'BOOK-OFF', category_id: 8, url: 'https://www.bookoff.co.jp/sell/' },
    { id: 8, name: 'トイズキング', category_id: 9,
      url: 'https://www.toysking.jp/?gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVFmO9XJLJqvi9xS7U4MXn1fChpj_0A9Bo-1A_f2pfTXhJRwTDo3faBoC8YYQAvD_BwE' },
    { id: 9, name: 'A-SPORTS', category_id: 10,
      url: 'https://a-sports10.com/sports/?glnw=g&glad=516734748614&glpm=&glkw=%E3%82%B9%E3%83%9D%E3%83%BC%E3%83%84%20%E3%82%B0%E3%83%83%E3%82%BA%20%E8%B2%B7%E5%8F%96&glti=kwd-314301825342&gllc=1009322&glmt=b&glfi=&gldv=c&gldm=&glcp=12824506749&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVHuKs9ISB3CLT_wHx4_bdC0ZXYgO5AwqrVzJ8brJbRTDLauIEwsqVxoCvYoQAvD_BwE' },
    { id: 10, name: '楽器の買取屋さん', category_id: 11,
      url: 'https://gakkikaitori.co.jp/lp-min/?glnw=g&glad=600456007872&glpm=&glkw=%E6%A5%BD%E5%99%A8%20%E8%B2%B7%E5%8F%96&glti=kwd-4483036458&gllc=1009322&glmt=p&glfi=&gldv=c&gldm=&glcp=193443465&cq_plac=&cq_net=g&cq_pos=&cq_med=&cq_plt=gp&argument=rYCPokjR&said=0&ca=193443465&gr=40646846766&cr=600456007872&kw=%E6%A5%BD%E5%99%A8%20%E8%B2%B7%E5%8F%96&nw=g&mt=p&mid=gg&device=c&pl=&tg=kwd-4483036458&saf_src=google_g&saf_pt=&saf_kw=%E6%A5%BD%E5%99%A8%20%E8%B2%B7%E5%8F%96&saf_dv=&saf_cam=193443465&saf_grp=40646846766&saf_ad=600456007872&saf_acc=3465277321&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVJNrLGm9h0JMiB_rVCnPdxL6kyc0UQBDRww1TQyy6_8VFZ_iju7_FhoCEmQQAvD_BwE' },
    { id: 11, name: 'まねきや', category_id: 12,
      url: 'https://kikinzoku-kaitori.com/?utm_source=google&utm_medium=cpc&utm_campaign=kanto&glnw=g&glad=567983772371&glpm=&glkw=%E8%B2%B4%E9%87%91%E5%B1%9E%20%E8%B2%B7%E5%8F%96&glti=kwd-4283697631&gllc=1009322&glmt=e&glfi=&gldv=c&gldm=&glcp=13918480693&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVBm43Qw06DkCS5ULl7sm0eFFDkmNDVHgj1JLmFw9UQBlMaZGktXPrBoC6uIQAvD_BwE' },
    { id: 12, name: '思文閣', category_id: 13,
      url: 'https://satei.shibunkaku.co.jp/?utm_source=google&utm_medium=cpc&utm_campaign=gsn&utm_source=google&utm_medium=cpc&utm_campaign=category&utm_term=%E7%BE%8E%E8%A1%93%E5%93%81%20%E8%B2%B7%E5%8F%96&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVMka8_BTlC_iS0IbJMrDLTRWFjDZnlI5K8gKWyI7sM6Mhggp_O_ByRoCSPAQAvD_BwE' },
    { id: 13, name: 'さくらいカメラ', category_id: 14,
      url: 'https://sakurai-camera.com/?branch=kanto&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVNV12BOseNSeaj9EDb7nDQD75OtdpXD-kJlndtaiRrkQ45rsC1xwvBoCTXkQAvD_BwE' },
    { id: 14, name: 'YTH', category_id: 15,
      url: 'https://pc-kaitorisatei.com/?utm_source=google&utm_medium=cpc&utm_campaign=big_pc&gad_source=1&gclid=CjwKCAjwyJqzBhBaEiwAWDRJVDA8xMu-MMAALSokezsGxzPHlkh89-UrLqOlGBY0KPJ0JBolKE0s8xoCFqgQAvD_BwE' },
    { id: 15, name: '福ちゃん', category_id: 16, url: 'https://fuku-chan.jp/kosen4/?page=la&item=kosen&caf_session_id=xuidx9004c8f3a7xb1f&caf_ad_id=418&cid=so-202406114e89c2f427875eee50b59ebdc4a8df60&utm_term' },
    { id: 16, name: 'THE GOLD', category_id: 6, url: 'https://www.the-gold.jp/feature/kimono/l4/?utm_source=&caf_session_id&caf_ad_id&caf_session_id=xuidx900fa75a48xaff&caf_ad_id=409&hc_uus=45c36c6ef927c40ed7fa24b2b8bd7aa0&link_code_ak=XZ7LU.1.NBTSO&referer=' }
  ]

  include ActiveHash::Associations
  has_many :favorites
  has_many :users, through: :favorites, source: :user
  belongs_to :category
end
