$(document).ready(function(){
	$("#buyBtn").on("click", function(){
			var userid = $("#userid").val();
			var po_no = $("#po_no").val();
		 	if(userid==""){
				alert("�α������ּ���");
			}else{
				location.href="/single/po/buy.do?userid="+userid+"&po_no="+po_no;
			} 
	});
});
window.onload = function(){
	if($("#state").val()==0){
		alert("����Ʈ�� �����մϴ�.");
		document.getElementById("#state").value = "";
	}else if($("#state").val()==1){
		alert("���Ű� �Ϸ�Ǿ����ϴ�.");
		document.getElementById("#state").value = "";
	}
}