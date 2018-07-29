//�޷�, �������
$(function() {
	$.datepicker.setDefaults({
		closeText : "�ݱ�",
		prevText : "������",
		nextText : "������",
		currentText : "����",
		monthNames : [ '1��(JAN)', '2��(FEB)', '3��(MAR)', '4��(APR)', '5��(MAY)',
				'6��(JUN)', '7��(JUL)', '8��(AUG)', '9��(SEP)', '10��(OCT)',
				'11��(NOV)', '12��(DEC)' ],
		monthNamesShort : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��',
				'9��', '10��', '11��', '12��' ],
		monthNames : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��',
				'10��', '11��', '12��' ],
		dayNamesMin : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
		dayNamesShot : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
		dayNames : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],

		changeMonth : true, // �� ���氡��
		changeYear : true, // �� ���氡��
		showMonthAfterYear : true, // �� �ڿ� �� ǥ��
		dateFormat : "yy/mm/dd", // ����� ǥ�ù��
		firstDay : 1, // 0: �Ͽ��� ���� ����, 1:������ ���� ����
		autoSize : true, // default: false, input ����� �ڵ����� ��������.
		showAnim : "fold", // default: show , fold
		showWeek : false, // ���� = true : ���̱� / false : �����
		weekHeader : "����", // default: Wk, ���� ��� �κ��� ��Ī ����
		showButtonPanel : true, // �ϴܿ� Today, Done ��ư Display
		gotoCurrent : false, // default: false, true�� ��쿡�� Today��ư Ŭ�� �� ����
								// ���ڷ� �̵����� ����
	});
	$("#datepicker").datepicker();
});

//��й�ȣ ��ġȮ��
$(document).ready(function(){
	$("#pwdChk").on("keyup",function(){
		if((myform.me_pwd.value)==(myform.pwdChk.value)){
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ�մϴ�";
		}else{
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.";
		}
	});
});

//��ȭ��ȣ �ڵ�������
$(document).ready(function () {
	   $(function () {
	            $("#me_phone").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	         $("#me_telnum").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	   });
});

//���̵� �ߺ�Ȯ��
var xhr
function IdCheck() {
	//alert("test");
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = idCheckMsg;
	
	xhr.open("POST","/single/idcheck.do",true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send("id="+myform.me_id.value);
}
function idCheckMsg() {
	if(xhr.readyState==4&&xhr.status==200){
		document.getElementById("idChk").innerHTML = xhr.responseText;
	}
}