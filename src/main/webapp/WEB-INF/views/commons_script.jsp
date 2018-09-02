
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="./resources/js/jquery.min.js"></script>
      <script>
         function emailv(userid)
         {
         	var electiontypea =$("#email").val();
         
         	  $.ajax({
         	            type: "POST",
         	            cache: false,
         	            url: "demoemail.php", /* The country id will be sent to this file */
         	            data: "email="+electiontypea+"&action=electionyear",
         	            success: function(msg){
         		            if(msg !=''){
         	                $(".erroremail").html(msg);
         	                $("#email1").val('');
         		            }else{
         		            $(".erroremail").html('');
         		            $("#email1").val(msg);
         		            }
         	            }
         	           });
         }
             
             	$(document).ready(function () {
         
             	    jQuery.validator.addMethod("require_from_group", function (value, element, options) {
             	        var numberRequired = options[0];
             	        var selector = options[1];
             	        var fields = $(selector, element.form);
             	        var filled_fields = fields.filter(function () {
             	            // it's more clear to compare with empty string
             	            return $(this).val() != "";
             	        });
             	        var empty_fields = fields.not(filled_fields);
             	        // we will mark only first empty field as invalid
             	        if (filled_fields.length < numberRequired && empty_fields[0] == element) {
             	            return false;
             	        }
             	        return true;
             	        // {0} below is the 0th item in the options field
             	    }, jQuery.format("Please fill out at least {0} of these fields."));
         
             	    $('#contactformde').validate({ // initialize the plugin
             	        groups: {
             	            names: "mp mc"
             	        },
             	        rules: {
             	            mp: {
             	                require_from_group: [1, ".send"]
             	            },
             	            mc: {
             	                require_from_group: [1, ".send"]
             	            }
             	        }
             	    });
         
         
         
             	});
         
         
      </script>
      <script src="./resources/js/jquery-ui.js"></script>
      <script type="text/javascript" src="./resources/js/jquery.validate.min.js"> </script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="./resources/js/bootstrap.min.js"></script>
      <script src="./resources/js/lightbox.js"></script>
      <script src="./resources/js/jquery.fancybox.js"></script>
      <script src="./resources/js/jquery.fancybox.pack.js"></script>
      <script type="text/javascript" src="./resources/js/jquery.mousewheel.pack.js"></script>
      <!-- Add fancyBox main JS and CSS files -->
      <script type="text/javascript" src="./resources/js/jquery.fancybox.pack.js"></script>
      <link rel="stylesheet" type="text/css" href="./resources/css/jquery.fancybox.css" media="screen" />
      <!-- Add Button helper (this is optional) -->
      <link rel="stylesheet" type="text/css" href="./resources/css/jquery.fancybox-buttons.css" />
      <script type="text/javascript" src="./resources/js/jquery.fancybox-buttons.js"></script>
      <!-- Add Thumbnail helper (this is optional) -->
      <link rel="stylesheet" type="text/css" href="./resources/css/jquery.fancybox-thumbs.css" />
      <script type="text/javascript" src="./resources/js/jquery.fancybox-thumbs.js"></script>
      <!-- Add Media helper (this is optional) -->
      <script type="text/javascript" src="./resources/js/jquery.fancybox-media.js"></script>
      <script type="text/javascript" src="./resources/js/jquery.carouFredSel.js"> </script>
      <script type="text/javascript">
         $(document).ready(function(){
           var date=new Date(); 
                    
           var months=["JAN","FEB","MAR","APR","MAY","JUN","JUL",
             "AUG","SEP","OCT","NOV","DEC"];
             var val=date.getDate()+" "+months[date.getMonth()]+" "+date.getFullYear();
             $("#printDate").text(val);
         
             /*var time = dt.getHours() + ":" + dt.getMinutes();
             $("#printTime").text(time);*/
         
             var dt = new Date();
           var hours = date.getHours() > 12 ? date.getHours() - 12 : date.getHours();
           var am_pm = date.getHours() >= 12 ? "PM" : "AM";
           hours = hours < 10 ? "0" + hours : hours;
           var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
           
           var time = hours + ":" + minutes + ":" + am_pm;
            $("#printTime").text(time);
         
            var queryURL = "https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202487889&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys/";
         
         $.getJSON(queryURL, function (data) {
         
         var results = data.query.results
         var firstResult = results.channel.item.condition
         console.log(firstResult);
         
         var location = 'Unknown' // not returned in response
         var temp = firstResult.temp
         var text = firstResult.text
         
         $('#output').append( temp + '&#x2109;');
         
         })
                  
         });
      </script>   
      <script>
         $( function() {
         
          
         
          
           var availableTags = ["Municipal Corporation Election ","Rajya Sabha","Assembly Election","Lok Sabha","Municipal Councils","District Councils"];
           $( "#tags" ).autocomplete({
           		source: availableTags
             
           });
         
           var availableTags2 = ["AAP Party","BJP","Indian National Congress","NCP Party","CPI","Bahujan Samaj Party","All India Trinamool Congress","Rashtrawadi Congress Party"];
           $( "#tags2" ).autocomplete({
             source: availableTags2
           });
         
           var availableTags3 = [
             "Ahmednagar Municipal Corporation",
             "Akola Municipal Corporation",
             "Amravati Municipal Corporation",
             "Aurangabad Municipal Corporation",
             "Bhiwandi-Nizampur Municipal Corporation",
             "Chandrapur Municipal Corporation",
             "Dhule Municipal Corporation",
             "Kalyan-Dombivli Municipal Corporation",
             "Kolhapur Municipal Corporation",
             "Malegaon Municipal Corporation",
             "Mira-Bhayandar Municipal Corporation",
             "Nagpur Municipal Corporation",
             "Nanded-Waghala Municipal Corporation",
             "Nashik Municipal Corporation",
             "Panvel Municipal Corporation",
             "Parbhani Municipal Corporation",
             "Pimpri-Chinchwad Municipal Corporation",
             "Pune Municipal Corporation",
             "Solapur Municipal Corporation",
             "Thane Municipal Corporation",
             "Vasai-Virar City Municipal Corporation"
           ];
           $( "#tags3" ).autocomplete({
             source: availableTags3
           });
           var availableTags4 = ["Nana Kate"];
           $( "#tags4" ).autocomplete({
             source: availableTags4
           });
         } );
      </script>
      <script type="text/javascript">
         /*************ticker**************/
         $(function() {
           var _scroll = {
             delay: 1000,
             easing: 'linear',
             items: 1,
             duration: 0.07,
             timeoutDuration: 0,
             pauseOnHover: 'immediate'
           };
           $('#ticker-1').carouFredSel({
             width: 1000,
             align: false,
             items: {
               width: 'variable',
               height: 35,
               visible: 2
             },
             scroll: _scroll
           });
         
         
         
           //	set carousels to be 100% wide
           $('.caroufredsel_wrapper').css('width', '100%');
         
         
         });
         
         $(document).ready(function(){
         $('.toggle').on('click', function() {
           $('.container1').stop().addClass('active');
         });
         
         $('.close').on('click', function() {
           $('.container1').stop().removeClass('active');
         });
         
         });
      </script>
      <script type="text/javascript" src="./resources/js/jquery.countdown.min.js"> </script>
      <script type='text/javascript'>
         /* <![CDATA[ */
         var counterJSObject = {"count_day":"Days","count_hour":"Hour","count_minutes":"Minutes","count_second":"Second"};
         /* ]]> */
      </script>
      <script>
         /* ======= Countdown ======= */
         (function () {
             $('[data-countdown]').each(function() {
                 var $this = $(this), finalDate = $(this).data('countdown');
         
                 $this.countdown(finalDate, function(event) {
                     $this.html(event.strftime(''
                         + '<li><span class="days">%D<span><p>'+counterJSObject.count_day+'</p></li>'
                         + '<li><span class="hours">%H<span><p>'+counterJSObject.count_hour+'</p></li>'
                         + '<li><span class="minutes">%M<span><p>'+counterJSObject.count_minutes+'</p></li>'
                         + '<li><span class="second">%S<span><p>'+counterJSObject.count_second+'</p></li>'
                     ));
                 });
             });
         }());
         
         $(function () {
                $("[rel='tooltip']").tooltip();
            });
      </script>
      <script type="text/javascript">
         $(function() {
           $.ajax({
                     type: "POST",
                     cache: false,
                     url: "http://www.risingelection.com/archivegetdata.php", /* The country id will be sent to this file */
                     data: "action=election"+'',
                     success: function(msg){
                       //alert (msg);
                     	$("#candidates").html("");
                         $("#candidates").html(msg);
                     }
                    });
         
         });
         
         $('#year').on('change',function (){
         
         	var electiontypea =$( "#select_city3 option:selected" ).val();
         
           $.ajax({
                     type: "POST",
                     cache: false,
                     url: "archivegetdata.php", /* The country id will be sent to this file */
                     data: "electiontypeid="+electiontypea+"&year="+this.value+"&action=electionyear",
                     success: function(msg){
                       //alert (msg);
                     	$("#candidates").html("");
                         $("#candidates").html(msg);
                     }
                    });
         
         })
         
         
         
         
         
         
         
         
         $('#constituency').on('change',function (){
         	var stateid =$( "#stateselect option:selected" ).val();
           $.ajax({
                     type: "POST",
                     cache: false,
                     url: "archivegetdata.php", /* The country id will be sent to this file */
                     data: "constituency_id="+stateid+"&action=constituency",
                     success: function(msg){
                       //alert (msg);
                         $("#areaselect").html(msg);
                     }
                    });
         
         })
         $('#stateselect').on('change',function (){
         	var stateid =$( "#stateselect option:selected" ).val();
           $.ajax({
                     type: "POST",
                     cache: false,
                     url: "archivegetdata.php", /* The country id will be sent to this file */
                     data: "state_id="+stateid+"&action=state",
                     success: function(msg){
                       //alert (msg);
                         $("#constituency").html(msg);
                     }
                    });
         
         })
         
           $(document).ready(function(){
                         $("#ragisterform").validate({
                         rules:{
                         	email1:{required:true}
         
                             },
                             highlight:          function(a){$(a).closest(".form-group").removeClass("success").addClass("control-label")},
         
                             success:function(a){a.closest(".form-group").removeClass("error").addClass("success")},
                     })
                 });
         
      </script>
      <script type="text/javascript">
         $('#select_city2').on('change',function (){
         	  // alert (this.value);
         	  // $('#select_city4').html('<option val="1">One</option>');
         	  $.ajax({
         	            type: "POST",
         	            cache: false,
         	            url: "../getdata.php", /* The country id will be sent to this file */
         	            data: "Cityid="+this.value+"&action=areaccity",
         	            success: function(msg){
         
         	              if(msg != ''){
         	                $("#select_city4").html(msg);
         	                $("#select_city4").show();
         	              }else{
         	            	  $("#select_city4").html(msg);
         	            	  $("#select_city4").hide();
         	            	  $("#select_city6").hide();
         	              }
         	            }
         	           });
         });
         
         
         $('#select_city4').on('change',function (){
         	  // alert (this.value);
         	  // $('#select_city4').html('<option val="1">One</option>');
         	  $.ajax({
         	            type: "POST",
         	            cache: false,
         	            url: "../getdata.php", /* The country id will be sent to this file */
         	            data: "Cityid="+this.value+"&action=areaccityarea",
         	            success: function(msg){
         	              //alert (msg);
         	              
         	            	 if(msg != ''){
         	 	                $("#select_city6").html(msg);
         	 	                $("#select_city6").show();
         	 	              }else{
         	 	            	  $("#select_city6").html(msg);
         	 	            	  $("#select_city6").hide();
         	 	              }
         	            }
         	           });
         });
      </script>
      <script type="text/javascript" src="./resources/js/jquery.countdown.min.js"> </script>
      <script type='text/javascript'>
         /* <![CDATA[ */
         var counterJSObject = {"count_day":"Days","count_hour":"Hour","count_minutes":"Minutes","count_second":"Second"};
         /* ]]> */
      </script>
      <script>
         /* ======= Countdown ======= */
         (function () {
             $('[data-countdown]').each(function() {
                 var $this = $(this), finalDate = $(this).data('countdown');
         
                 $this.countdown(finalDate, function(event) {
                     $this.html(event.strftime(''
                         + '<li><span class="days">%D<span><p>'+counterJSObject.count_day+'</p></li>'
                         + '<li><span class="hours">%H<span><p>'+counterJSObject.count_hour+'</p></li>'
                         + '<li><span class="minutes">%M<span><p>'+counterJSObject.count_minutes+'</p></li>'
                         + '<li><span class="second">%S<span><p>'+counterJSObject.count_second+'</p></li>'
                     ));
                 });
             });
         }());
         
         
         
      </script>
      <script type="text/javascript" src="./resources/js/jquery.carouFredSel.js"> </script>
      <script type="text/javascript">
         $(function() {
         	$('#carousel').carouFredSel({
         		width: '100%',
         		items: {
         			visible: 3,
         			start: -1
         		},
         		scroll: {
         			items: 1,
         			duration: 1000,
         			timeoutDuration: 3000
         		},
         		prev: '#prev',
         		next: '#next',
         		pagination: {
         			container: '#pager',
         			deviation: 1
         		}
         	});
         });
         /*************ticker**************/
         $(function() {
         	var _scroll = {
         		delay: 1000,
         		easing: 'linear',
         		items: 1,
         		duration: 0.07,
         		timeoutDuration: 0,
         		pauseOnHover: 'immediate'
         	};
         	$('#ticker-1').carouFredSel({
         		width: 1000,
         		align: false,
         		items: {
         			width: 'variable',
         			height: 35,
         			visible: 2
         		},
         		scroll: _scroll
         	});
         	//	set carousels to be 100% wide
         	$('.caroufredsel_wrapper').css('width', '100%');
         });
      </script>
      <script type="text/javascript">
         function poll(type, id)
         {
         
         	var nvar = '';
         	if(nvar ==''){
         		$("#myModal").modal('show');
         	}else{
                     $.ajax({
                          type: "POST",
                          url: "getdata.php", /* The country id will be sent to this file */
                          data: "id="+id+"&type="+type+"&action=poll",
                          success: function(msg){
                         $("#pollclick").html(msg).fadeIn(1000);
                         //alert(msg);
         
                          }
                         });
         	}
         
         
         }
      </script>
      <script type="text/javascript">
         $(document).ready(function(){
         
         $('#itemslider').carousel({ interval: 3000 });
         
         $('.carousel-showmanymoveone .item').each(function(){
         var itemToClone = $(this);
         
         for (var i=1;i<3;i++) {
         itemToClone = itemToClone.next();
         
         if (!itemToClone.length) {
         itemToClone = $(this).siblings(':first');
         }
         
         itemToClone.children(':first-child').clone()
         .addClass("cloneditem-"+(i))
         .appendTo($(this));
         }
         });
         });
      </script>