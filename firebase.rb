# Create your account and app. https://www.firebase.com

require "firebase"
firebase_app_name = "igaigatest".freeze
base_uri = "https://#{firebase_app_name}.firebaseio.com/"
firebase = Firebase::Client.new(base_uri)

## set は登録(データが既にあれば上書き)
response = firebase.set("box1", {a:1,b:2})
## push は自動でidを振って末尾に追加
# response = firebase.push("box1", { :name => 'baz', :priority => 1 })

## response
# response.success? # => true
# response.code # => 200
# response.body # => { 'name' => "-INOQPH-aV_psbk3ZXEX" }
# response.raw_body # => '{"name":"-INOQPH-aV_psbk3ZXEX"}'

## get(データ取得)
hash = firebase.get("box1").body #=> Hash, {a:1,b:2}
json = firebase.get("box1").raw_body #=> JSON String, {a:1,b:2}

## sample
h = {apple: 100, grape: 120}
firebase.set("box2", h)
result = firebase.get("box2").body #=> {apple: 100, grape: 120}
