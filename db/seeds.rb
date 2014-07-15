User.create!([
  {email: "epv9@case.edu", encrypted_password: "$2a$10$JFmvRMLHlZ0rG2Ol72b6keS9xiwdqviWnqG95zDbwXItuvXo4.U92", reset_password_token: "f6ad2e6d187dde7d3c3c45edc16167cc75150672d12a13a75ce79af27809c065", reset_password_sent_at: "2014-06-28 17:15:30", remember_created_at: nil, sign_in_count: 38, current_sign_in_at: "2014-07-14 20:19:37", last_sign_in_at: "2014-07-11 15:46:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "evennaro14@jcu.edu", encrypted_password: "$2a$10$x5bkiZYoudjzIABW7eHnMufdtrw3BuW22W1DerSLZaLEhyJbUwiz6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 12, current_sign_in_at: "2014-07-14 20:20:07", last_sign_in_at: "2014-07-14 18:53:13", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "epv@vennaro.com", encrypted_password: "$2a$10$WLSMESzP.olqbKNPYwl.xeYtiX6XRwufSQ/zWX1S5su3XKo476d6e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2014-07-11 15:55:16", last_sign_in_at: "2014-07-11 02:31:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
AnalyticsByWeek.create!([
  {week: 0, weibo_followers: 20, email_signups: 3, seo_rank: 8, weibo_clicks: 100, profile_id: 1, user_id: "2"},
  {week: 1, weibo_followers: 40, email_signups: 20, seo_rank: 8, weibo_clicks: 100, profile_id: 1, user_id: "2"},
  {week: 2, weibo_followers: 30, email_signups: 8, seo_rank: 6, weibo_clicks: 500, profile_id: 1, user_id: "2"}
])
Cart.create!([
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
])
Duration.create!([
  {title: "Three Months", length: 3, rate: "1.0", discount: 0.0},
  {title: "Six Months", length: 6, rate: "1.8", discount: 10.0}
])
LineItem.create!([
  {product_id: 2, cart_id: nil, quantity: 1, order_id: 14},
  {product_id: 2, cart_id: 149, quantity: 1, order_id: nil},
  {product_id: 2, cart_id: 150, quantity: 1, order_id: nil},
  {product_id: 3, cart_id: nil, quantity: 1, order_id: 15},
  {product_id: 2, cart_id: nil, quantity: 1, order_id: 16},
  {product_id: 1, cart_id: nil, quantity: 1, order_id: 16},
  {product_id: 2, cart_id: 155, quantity: 1, order_id: nil},
  {product_id: 2, cart_id: nil, quantity: 1, order_id: 17}
])
Order.create!([
  {name: "Eric", email: "epv@vennaro.com", college_name: "Colgate ", address: "1296 main street", plan_type: "Three Months", phone_number: "8606593502", state: "Connecticut", zip_code: "06033", total_price: "10000.0", city: "Glastonbury", user_id: nil},
  {name: "Eric vennaro", email: "xxx@xxx.com", college_name: "Case Western Reserve University", address: "11317 Bellflower ", plan_type: "Three Months", phone_number: "8606593502", state: "Ohio", zip_code: "44106", total_price: "8000.0", city: "Cleveland", user_id: nil},
  {name: "Eric vennaro", email: "epv9@case.edu", college_name: "Colgate", address: "123 main street", plan_type: "Three Months", phone_number: "2036593402", state: "New York", zip_code: "06037", total_price: "18000.0", city: "Utica", user_id: 1},
  {name: "Eric vennaro", email: "evennaro14@jcu.edu", college_name: "Colgate", address: "123 main street", plan_type: "Three Months", phone_number: "86046294444", state: "Ohio", zip_code: "44106", total_price: "10000.0", city: "Cleveland", user_id: 2}
])
Post.create!([
  {title: "Test", content: "Test post, Testing blog functionality"}
])
Product.create!([
  {title: "Weibo", description: "Post advertisements and create content on the Chinese equivalent of Twitter", price: "8000.0"},
  {title: "Renren", description: "Post advertisements and create content on the Chinese Equivalent of Facebook", price: "10000.0"},
  {title: "Baidu", description: "Receive sponsored advertisements on the Chinese equivalent of Google", price: "8000.0"}
])
Profile.create!([
  {user_id: 2},
  {user_id: 3},
  {user_id: 1}
])
