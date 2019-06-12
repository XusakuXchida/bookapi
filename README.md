# README

# CLIプログラムについて
CLIプログラムはmyapp.rbです。問題の出題意図を自分なりに解釈してしまった部分があるのですが、
ruby myapp.rb  {arg1} {arg2} {arg3} {arg4}とした場合、

arg1 : 指定のurl
arg2 : http method (GET or PUT or DELETE)
arg3, arg4 : arg2が PUTであった場合、それぞれ title: description,
となるようにしました。

例えばこのrails appをlocalで rails sさせた場合、

ruby myapp.rb http://localhost:3000/books GET
でindex(本の一覧)が返され、

ruby myapp.rb http://localhost:3000/books/2 POST hoge hogehoge
でid:2の本が　title: "hoge", description: "hogehoge"の本に更新されます。


# 工夫したポイント
問題出題意図としてわざと出題されたのだと思いますが、問題の中では「指定の本を更新」は　POST /books/{id}となっていますが、
rails では更新(update)の場合、セオリーではmethodがPUTかPATCHです。
従いましてroutes.rbでは 'books#update'は静的にpost 'books/:id'を指定しました。

デバッグにはbinding.pry と postmanを使いました。
