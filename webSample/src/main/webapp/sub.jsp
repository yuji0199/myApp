<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--ボタン押下で自身のIDを送り、押下したボタンを識別できるようにする-->
<input type="button" id="12345" onclick="showModle(this)"></input>
<!--modal-->
<p id="name"></p>
<p id="address"></p>
<p id="tel"></p>

</body>
<script>
//JavaScript用のサプライヤークラス
class suplier {
	  constructor(name, address,tel) {
	    this.name = name;
	    this.address = address;
	    this.tel = tel;
	  }
}


// Javaのデータから、JavaScriptで扱えるクラスに変換
//ここでは省略しているが、Javaから値を受け取る構文にする必要あり
var supList  = new map();
for(var i=0;i < JavaSuplier.length;i++){
	supList.set(JavaSuplier[i].id,
				new suplier(
						JavaSuplier[i].name,
						JavaSuplier[i].address,
						JavaSuplier[i].tel,
				)
	)
}
//ボタンの情報から、サプライヤーリストの情報を抽出し、モーダル用HTMLタグに値をセット
//モーダル画面を表示する。
function showModle(param){
	var tmpSup = supList.get(param.id);
	document.getElementByID("address")= tmpSUp.address;
	
	//modal表示するScript
	
	//
	}
}
</script>
</html>