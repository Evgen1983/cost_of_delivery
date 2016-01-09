$(function () {
   
  $('[name="commit"]').click( function(event) {
    var $var1 = $('[name="delivery[from]"]').val();
    var $var2 = $('[name="delivery[where]"]').val();
    //event.preventDefault();
      $.ajax({
        url: "http://calc-api.ru/app:geo-api/null?a="+ encodeURIComponent($var1)+"&b="+encodeURIComponent($var2),
	      dataType: "json",
        async:false,
        //timeout:3000,
	      success: function(result){ 
          console.log(result);
          if (result.distanse > 0) {
            $('[name="delivery[distance]"]').val(result.distanse);
            console.log(result); 
          }
          else
          {
            event.preventDefault();
            alert("API определения адреса недоступно или введены неверные данные, проверьте введенные данные и перезагрузите страницу");
          }
		    }
      });
   });
});