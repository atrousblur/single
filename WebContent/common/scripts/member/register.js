$( function() {
     $.datepicker.setDefaults({
         closeText: "�ݱ�",
         prevText: "������",
         nextText: "������",
         currentText: "����",
         monthNames: ['1��','2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
         dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'],  
        showMonthAfterYear: true,
        dateFormat: "yy/mm/dd",  
         firstDay: 1, 
        
     });
     $( "#datepicker" ).datepicker();
 } );