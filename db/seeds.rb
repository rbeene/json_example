def payload
  {
    "id" => "ch_15CgxA2eZvKYlo2CKmsiWhme",
    "object" => "charge",
    "created" => Time.now.utc.to_i - rand(50000),
    "livemode" => false,
    "paid" => [true, true, true, false].sample,
    "amount" => rand(5000),
    "currency" => "usd",
    "refunded" => false,
    "captured" => true,
    "card" => {
      "id" => "card_15CgxA2eZvKYlo2Caap6WFXF",
      "object" => "card",
      "last4" => %w(4242 1111 2222 3333).sample,
      "brand" => %w(Mastercard Visa Amex Discover).sample,
      "funding" => "credit",
      "exp_month" => 1,
      "exp_year" => %w(2016 2017 2020 2024).sample,
      "fingerprint" => "Xt5EWLLDS7FJjR1c",
      "country" => "US",
      "name" => nil,
      "address_line1" => nil,
      "address_line2" => nil,
      "address_city" => nil,
      "address_state" => %w(MA NY CT IN KY).sample,
      "address_zip" => nil,
      "address_country" => nil,
      "cvc_check" => "pass",
      "address_line1_check" => nil,
      "address_zip_check" => nil,
      "dynamic_last4" => nil,
      "customer" => nil
    },
    "balance_transaction" => "txn_15AXsk2eZvKYlo2C6TfArJ7J",
    "failure_message" => nil,
    "failure_code" => nil,
    "amount_refunded" => 0,
    "customer" => nil,
    "invoice" => nil,
    "description" => nil,
    "dispute" => nil,
    "metadata" => {},
    "statement_descriptor" => nil,
    "fraud_details" => {},
    "receipt_email" => nil,
    "receipt_number" => nil,
    "shipping" => nil,
    "refunds" => {
      "object" => "list",
      "total_count" => 0,
      "has_more" => false,
      "url" => "/v1/charges/ch_15CgxA2eZvKYlo2CKmsiWhme/refunds",
      "data" => []
    }
  }
end

users = [
  {:first=>"Mike", :last=>"Ball"},
  {:first=>"Sarah", :last=>"Power"},
  {:first=>"Jane", :last=>"Chen"},
  {:first=>"Robert", :last=>"Klickna"},
  {:first=>"John", :last=>"Harrison"},
  {:first=>"Karie", :last=>"Booker"},
  {:first=>"Chris", :last=>"Beene"},
  {:first=>"Jessica", :last=>"Yared"},
  {:first=>"Jim", :last=>"Smith"}
]

users.each do |user|
  u = User.create(user)
  (1..5).each do
    Charge.create(user_id: u.id, payload: payload)
  end
end

Dynamic.create(payload: {x: ['1','2','3']})
Dynamic.create(payload: {x: ['3','4','5']})
Dynamic.create(payload: {x: '1'})
Dynamic.create(payload: {x: '1', y: '2'})
Dynamic.create(payload: {x: '3', y: '4'})
Dynamic.create(payload: {a: '1', b: '2'})
