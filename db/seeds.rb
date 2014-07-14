User.create!([
  {email: "epv9@case.edu", password: "12345678", password_confirmation: "12345678" },
  {email: "evennaro14@jcu.edu", password: "12345678", password_confirmation: "12345678" },
  {email: "epv@vennaro.com", password: "12345678", password_confirmation: "12345678" }
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
  {user_id: 3}
])
