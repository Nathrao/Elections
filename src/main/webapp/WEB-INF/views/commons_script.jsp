
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="./resources/js/jquery.min.js"></script>
      <script>
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
      <script type="text/javascript" src="./resources/js/function.js"> </script>