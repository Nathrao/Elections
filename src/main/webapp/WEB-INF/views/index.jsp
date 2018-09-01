<!DOCTYPE html>
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <title>Welcome to Rising Election </title>
      <meta name="description" content="" />
      <meta name="keywords" content="" />
      <link rel="shortcut icon" href="http://www.risingelection.com/images/favicon.ico" />
      <!-- Bootstrap -->
      <link rel="shortcut icon" href="./resources/images/favicon.ico">

      <!-- Bootstrap -->
      <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="./resources/css/hover-min.css" rel="stylesheet">
      <link href="./resources/css/lightbox.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" media="all" href="./resources/css/map.css">
      <link rel="stylesheet" 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="./resources/css/style.css" rel="stylesheet">
      <link href="./resources/css/responsive.css" rel="stylesheet">
      <link href="./resources/css/jquery-ui.css" rel="stylesheet">
      <link href="./resources/css/jquery.fancybox.css" rel="stylesheet">
      <style>
         .modal-header, h4, .close {
         background-color: #5cb85c;
         color:white !important;
         text-align: center;
         font-size: 30px;
         }
         .modal-footer {
         background-color: #f9f9f9;
         }
      </style>
   </head>
   <body>
	  <!--Navigation-->
      <!--Header-->
      <nav class="navbar navbar-inverse  navbar-fixed-top">
         <div class="conatiner-fluid">
            <!--page scroll button for -->
            <div class="navbar-header" role="navigation">
            </div>
            <!--page scroll button-->
            <ul class="nav navbar-nav">
               <li class="call"><a> <img src="./resources/images/call.png">+91020-XXXXXXX</a>
               </li>
            </ul>
            <ul class="nav navbar-nav navbar-right dropdown">
               <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Language
                  <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li>
                        <a href="#" tabindex="-1">MARATHI</a>
                     </li>
                     <li>
                        <a href="#" tabindex="-1">HINDI</a>
                     </li>
                     <li>
                        <a href="#" tabindex="-1">ENGLISH</a>
                     </li>
                  </ul>
               </li>
               <ul class="nav navbar-nav navbar-right dropdown">
                  <li>
                     <a href="" class="btn btn-primary" data-toggle="modal" data-target="#modalLRForm" style="line-height:29px">Sign In</a>
                  </li>
               </ul>
               <ul class="nav navbar-nav navbar-right dropdown">
                  <li>
                     <a href="" class="btn btn-primary" data-toggle="modal" data-target="#Registration" style="line-height:29px">Sign Up</a>
                  </li>
               </ul>
            </ul>
         </div>
         <!--container-fluid-->
      </nav>
    
      <header>
         <div class="header">
            <nav class="navbar navbar-default">
               <div class="container">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                     <span class="sr-only">Toggle navigation </span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     </button>
                     <a class="navbar-brand" href="http://www.risingelection.com/"><img src="http://www.risingelection.com/images/logo.png" class="img-responsive" alt="" /></a>
                  </div>
                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                       <ul class="nav navbar-nav navbar-right" style="float: right !important;">
                        <li class=" "><a href="./view?name=index"            class='hvr-float'><img src="./resources/images/head-home.png"
                           class="img-responsive" alt="" /> <span>Home</span></a></li>
                        <li class=" "><a href="./view?name=blog"
                           class='hvr-float'><img src="./resources/images/head-blog.png"
                           class="img-responsive" alt="" /><span>Blog</span></a></li>
                        <li class=" "><a
                           href="./view?name=election_day"
                           class='hvr-float'><img src="./resources/images/head-govern.png"
                           class="img-responsive" alt="" /><span>Election Day</span></a></li>
                        <li class=" "><a
                           href="./view?name=election_data"
                           class='hvr-float'><img src="./resources/images/Data_icon.png"
                           class="img-responsive" alt="" /><span>Survey Data</span></a></li>
                        <li class=" "><a
                           href="./view?name=complaints"
                           class='hvr-float'><img
                           src="./resources/images/head-govern.png"
                           class="img-responsive" alt="" /><span>Complaint</span></a></li>
                        <li class=" "><a
                           href="./view?name=risingyojana"
                           class='hvr-float'><img
                           src="./resources/images/head-govern.png"
                           class="img-responsive" alt="" /><span>Yojana</span></a></li>
                     </ul>
                       
                  </div>
                  <!-- /.navbar-collapse -->
               </div>
               <!-- /.container-fluid -->
            </nav>
         </div>
      </header>
      <div class="secondary  desktop-nav ">
         <div>
            <div class="ui-widget container">
               <form name="" class="contactform" id="contactformde" method="post" action="http://www.risingelection.com/state/maharashtra">
                  <div class="row mt100 ">
                     <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                        <div class="col-md-6 col-xs-12">
                           <div class="col-md-12 col-xs-12"><label for="tags"> Search By Election ____:  </label></div>
                           <div class="col-md-12 col-xs-12 tagLabel"><input class="form-control send" id="tags" name="mc" placeholder="Search By Election Type" /></div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                           <div class="col-md-12 col-xs-12"><label for="tags2">Search By Party: </label></div>
                           <div class="col-md-12 col-xs-12 tagLabel"><input class="form-control send" id="tags2" name="mp" placeholder="Search By Party Name" />
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row mt40">
                     <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                        <div class="col-md-12 col-xs-12"><label for="tags4">Search By Leader Name: </label></div>
                        <div class="col-md-12 col-xs-12">
                           <div class="col-md-9 col-xs-12 pl tagLabel">
                              <input id="tags4" class="form-control send" name="name" placeholder="Search By Leader Name" />
                           </div>
                           <div class="col-md-3 col-xs-12 pl">
                              <input type="submit" class="municipal-btn" value="Submit" />
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <div class="slideshow">
         <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
               <!-- Wrapper for slides -->
               <div class="item active">
                  <img src="http://www.risingelection.com/images/slider/1.jpg" class="img-responsive" alt="slider1" />
                  <div class="carousel-caption">
                     <h3>CORRUPTION IS A GRAVER _____ FOR INDIA THAN SECULARISM </h3>
                     <p>The Lok Sabha 2014 _________ will be one of ___ most closely contested elections __ the history of India. ____ the future of our _______ on the line, every ____ counts. </p>
                  </div>
               </div>
               <!-- <div class="item">
                  <img src="images/slider/2.jpg" class="img-responsive" alt="...">
                  <div class="carousel-caption">
                    <h3>CORRUPTION IS A GRAVER ISSUE FOR INDIA THAN SECULARISM2</h3>
                    <p>The Lok Sabha 2014 Elections will be one of the most closely contested elections in the history of India. With the future of our country on the line, every vote counts.</p>
                  </div>
                  </div>
                  -->
            </div>
            <!-- Controls -->
         </div>
      </div>
      <div class="battleground-section hidden-xs">
         <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12 nopadding">
               <a href="http://www.risingelection.com/election-day#vote"><img src="http://www.risingelection.com/images/battle/battleground1.jpg" class="img-responsive width100" alt="nitin" />
               </a>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 nopadding">
               <a href="http://www.risingelection.com/election-day#voter"><img src="http://www.risingelection.com/images/battle/battleground2.jpg" class="img-responsive width100" alt="nitin" /></a>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 nopadding">
               <a href="http://www.risingelection.com/election-day#election"><img src="http://www.risingelection.com/images/battle/battleground3.jpg" class="img-responsive width100" alt="nitin" /></a>
            </div>
         </div>
         <div class="battleground-bottom">
            <div class="container">
               <div class="row">
                  <div class="col-md-4 col-xs-12">
                     <img src="images/battle-homeicon.png" class="img-responsive battle-homeicon" alt="" />
                  </div>
                  <div class="col-md-8 col-xs-12 pull-right">
                     <div class="battleground-details">
                        <!-- <select class="battleground-select"  id="contactProject" name="contactProject">
                           <option value="">Select Election Type</option>
                               <option value="">Muncipal Corporation Election</option>
                           
                             </select> -->
                        <div class="clearfix"></div>
                        <p>READ THE ELECTION DAY __________.  <span>DON’T JUST VOTE, VOTE _____!&____; </span></p>
                        <div class="row ">
                           <div class="col-md-12 battle-link">
                              <a class="battle-btn" href="http://www.risingelection.com/election-day">What to do on ___ election day? </a>
                              <!-- <span class="pull-right"><a class="battle-btn" href="battleground">Know More</a></span>-->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="complaints-section hidden-xs">
         <div class="container">
            <div class="row">
            </div>
         </div>
      </div>
      <section id="latest-news">
         <!--Item slider text-->
         <div class="row trending">
            <div class="col-xs-12 col-sm-12 col-md-12 pl pr">
               <div class="col-xs-12 col-sm-6 col-md-3 border1px">
                  <div class="col-xs-12 col-sm-6 col-md-12 ">
                     <h2>Trending Minister </h2>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-9 ">
                  <div class="carousel carousel-showmanymoveone slide" id="itemslider">
                     <div class="carousel-inner">
                        <div class="item active">
                           <div class="col-xs-12 col-sm-6 col-md-4 pl">
                              <a href="http://www.risingelection.com/candidate/nana-kate"><img src="http://www.risingelection.com/images/1_7.jpg" class="img-responsive center-block" /></a>
                              <h3 class="text-center">Nana Kate </h3>
                              <h5 class="text-center">NCP Party </h5>
                           </div>
                        </div>
                     </div>
                     <div id="slider-control">
                        <a class="left carousel-control" href="#itemslider" data-slide="prev"><img src="https://s12.postimg.org/uj3ffq90d/arrow_left.png" alt="Left" class="img-responsive" /></a>
                        <a class="right carousel-control" href="#itemslider" data-slide="next"><img src="https://s12.postimg.org/djuh0gxst/arrow_right.png" alt="Right" class="img-responsive" /></a>
                     </div>
                     <!-- 
                        -->
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="blog-section">
         <a href="blog-other.php"><img src="images/index-blog.png" class="index_blog_img" alt="" /></a>
         <div id="carousel">
            <a href="http://www.risingelection.com/blogs/who-will-be-next-himachal-pradesh-cm-bjp-central-observers-to-arrive-in-shimla-today"><img src="images/blog/648935-thakur-nadda-1.jpg" alt="building4" width="719" height="301" /></a> 
            <!-- <img src="images/blog/AAP_SecondCarousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/PaidMedia_Carousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/Blog-5.jpg" alt="building1" width="719" height="301" />
               
               <img src="images/blog/Blog-2.jpg" alt="building2" width="719" height="301" />
               <img src="images/blog/Blog-3.jpg" alt="building3" width="719" height="301" />
               <img src="images/blog/Blog-4.jpg" alt="building4" width="719" height="301" /> -->
            <a href="http://www.risingelection.com/blogs/sena-dishes-out-advice-to-bjp-post-its-gujarat-himachal-wins-jd-u-too-has-something-to-say"><img src="images/blog/PTI12_18_2017_000219B.jpg" alt="building4" width="719" height="301" /></a> 
            <!-- <img src="images/blog/AAP_SecondCarousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/PaidMedia_Carousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/Blog-5.jpg" alt="building1" width="719" height="301" />
               
               <img src="images/blog/Blog-2.jpg" alt="building2" width="719" height="301" />
               <img src="images/blog/Blog-3.jpg" alt="building3" width="719" height="301" />
               <img src="images/blog/Blog-4.jpg" alt="building4" width="719" height="301" /> -->
            <a href="http://www.risingelection.com/blogs/with-rahul-at-helm-in-congress-pm-modi-calls-for-promotion-of-youth-in-bjp"><img src="images/blog/amit-shah-PM-Modi.jpg" alt="building4" width="719" height="301" /></a> 
            <!-- <img src="images/blog/AAP_SecondCarousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/PaidMedia_Carousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/Blog-5.jpg" alt="building1" width="719" height="301" />
               
               <img src="images/blog/Blog-2.jpg" alt="building2" width="719" height="301" />
               <img src="images/blog/Blog-3.jpg" alt="building3" width="719" height="301" />
               <img src="images/blog/Blog-4.jpg" alt="building4" width="719" height="301" /> -->
            <a href="http://www.risingelection.com/blogs/gujarat-elections-tracing-congress-campaign-strategy-and-bjp-s-responses"><img src="images/blog/supporters-elections-assembly-election-president-opposition-congress_6c0d2f16-dfa5-11e7-8c02-0f57a5c79e45.jpg" alt="building4" width="719" height="301" /></a> 
            <!-- <img src="images/blog/AAP_SecondCarousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/PaidMedia_Carousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/Blog-5.jpg" alt="building1" width="719" height="301" />
               
               <img src="images/blog/Blog-2.jpg" alt="building2" width="719" height="301" />
               <img src="images/blog/Blog-3.jpg" alt="building3" width="719" height="301" />
               <img src="images/blog/Blog-4.jpg" alt="building4" width="719" height="301" /> -->
            <a href="http://www.risingelection.com/blogs/a-little-bit-of-arvind-kejriwal-in-rahul-gandhi-s-gujarat-election-campaign"><img src="images/blog/rahul-gandhi-arvind-kejriwal-pti-875.png" alt="building4" width="719" height="301" /></a> 
            <!-- <img src="images/blog/AAP_SecondCarousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/PaidMedia_Carousal.jpg" alt="building4" width="719" height="301" />
               <img src="images/blog/Blog-5.jpg" alt="building1" width="719" height="301" />
               
               <img src="images/blog/Blog-2.jpg" alt="building2" width="719" height="301" />
               <img src="images/blog/Blog-3.jpg" alt="building3" width="719" height="301" />
               <img src="images/blog/Blog-4.jpg" alt="building4" width="719" height="301" /> -->
         </div>
         <a href="#" id="prev" title="Show previous">  </a>  <a href="#" id="next" title="Show next">  </a>
         <div class="relative">
            <div id="pager"></div>
         </div>
      </div>
      <div class="campaign-section">
      </div>
      <div class="poll-section">
         <div class="container">
            <div class="col-md-6">
               <div class="dyk">
                  <div class="dyk_header center">
                     <!--<img src="images/dyk.jpg"  />--> &nbsp; 
                  </div>
                  <br />
                  <div class="center">
                     <p class="font_20 dyk_content"><br />The word politics first ________ in English around 1460 __ the title of a ____ by Aristotle.   </p>
                  </div>
                  <br />
                  <!--<p class="center"><a href="javascript:;" class="dyk_knowmore" data-toggle="modal" data-target="#dyk">KNOW MORE</a></p>-->
                  <div class="col-md-12 center"><a href="http://www.facebook.com/sharer.php?u=http://www.risingelection.com/" onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="images/index-facebook-footer.png" alt="facebook" /></a>
                     <a href="http://twitter.com/home?status=http://www.risingelection.com/" title="Share on Twitter" target="_blank" onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=400,width=600');return false;"><img src="images/index-twitter-footer.png" alt="twitter" /></a>
                  </div>
                  <br />
               </div>
            </div>
            <div class="col-md-6">
               <div class="pod">
                  <div class="pod_header text-center">  <img src="images/pod.jpg" alt="" />  </div>
                  <br />
                  <div id="poll">
                     <div class="font_20 dyk_content center">Does Modi’s political invincibility _____ continue?  </div>
                     <br />
                     <br />
                     <div id="pollclick">
                        <div class="col-md-4 center">  <img src="images/yes.png" alt="yes" id="124" onclick="poll('yes', 124);" class="cursorpointer img-responsive center" /></div>
                        <div class="col-md-4 center"><span class="font_20 font_medium">OR </span></div>
                        <div class="col-md-4 center"><img src="images/no.png" class="cursorpointer img-responsive center" alt="no" id="124" onclick="poll('no', 124);" /></div>
                        <div class="text-center"></div>
                     </div>
                  </div>
                  <br />
               </div>
            </div>
         </div>
      </div>
      <footer>
         <div class="top-footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-2 col-xs-6">
                     <ul class="list-unstyled">
                        <!-- <li><a href="#">About Us</a></li>
                           <li><a href="#">In the News</a></li>
                           <li><a href="#">Copyright</a></li>
                           <li><a href="#">Privacy Policy</a></li>
                           <li><a href="#">Advertise</a></li> -->
                        <li><a href="http://www.risingelection.com/about-us">About Us </a></li>
                        <li><a href="http://www.risingelection.com/copyright">Copyright </a></li>
                        <li><a href="http://www.risingelection.com/advertise">Advertise </a></li>
                     </ul>
                  </div>
                  <div class="col-md-2 col-xs-6">
                     <ul class="list-unstyled">
                        <li><a href="http://www.risingelection.com/home">Home </a></li>
                        <li><a href="http://www.risingelection.com/news-channels">News Channels </a></li>
                     </ul>
                  </div>
                  <div class="col-md-2 col-xs-6">
                     <ul class="list-unstyled">
                        <li><a href="http://www.risingelection.com/archive-did-you-know">Archive  Did you ____ </a></li>
                        <li><a href="http://www.risingelection.com/archive-view-polls">Archive View Polls </a></li>
                        <li><a href="http://www.risingelection.com/web-sitemap">Sitemap </a></li>
                     </ul>
                  </div>
                  <div class="col-md-2 col-xs-6">
                     <ul class="list-unstyled">
                        <li><a href="https://www.facebook.com/risingelection/" target="_blank">Facebook </a></li>
                        <li><a href="https://twitter.com/risingelection" target="_blank">Twitter </a></li>
                        <li><a href="https://www.linkedin.com/company/rising-elections" target="_blank">Linked In </a></li>
                        <li><a href="https://plus.google.com/109869287593393897837" target="_blank">Google Plus </a></li>
                        <li><a href="https://www.instagram.com/risingelection/" target="_blank">Instagram </a></li>
                     </ul>
                  </div>
                  <div class="col-md-2 col-xs-6">
                     <ul class="list-unstyled">
                        <li><a href="http://www.risingelection.com/have-a-question">Have a question? </a></li>
                        <li><a href="http://www.risingelection.com/data-correction">Data Correction </a></li>
                        <li><a href="http://www.risingelection.com/faq">FAQ </a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <div class="bottom-footer">
            <div class="footer_bg">
               <div class="footer font_20">
                  <div class="footer_header col-md-2">BREAKING NEWS </div>
                  <div class="news col-md-8">
                     <div class="caroufredsel_wrapper breakingnews1">
                        <dl id="ticker-1" class="breakingnews2">
                           <dd>
                              <a href="https://www.ndtv.com/india-news/election-commission-convenes-all-party-meet-on-august-27-ahead-of-2019-elections-1905818" target="_blank" title="">
                              Poll Body ________ All-Party Meet On August 27 Ahead Of 2019 Elections 
                              </a>
                           </dd>
                           <dd>
                              <a href="https://www.ndtv.com/cities/curfew-imposed-in-rajasthan-town-after-stones-thrown-at-kanwariyas-1905816" target="_blank" title="">
                              Curfew Imposed __ Rajasthan Town After Stones ______ At Kanwariyas 
                              </a>
                           </dd>
                           <dd>
                              <a href="https://www.ndtv.com/india-news/rahul-gandhi-in-london-says-will-win-in-2019-by-forging-formidable-alliance-1905815" target="_blank" title="">
                              "Will Create __________ Alliance To Win In 2019": Rahul Gandhi In London 
                              </a>
                           </dd>
                           <dd>
                              <a href="https://www.ndtv.com/mumbai-news/mumbai-auto-driver-masturbated-in-front-of-woman-passenger-arrested-1905812" target="_blank" title="">
                              Mumbai Auto ______ Masturbated In Front Of _____ Passenger, Arrested 
                              </a>
                           </dd>
                           <dd>
                              <a href="https://www.ndtv.com/india-news/kerala-floods-news-of-rs-700-crore-aid-from-uae-for-kerala-came-from-leaders-of-both-countries-pinar-1905810" target="_blank" title="">
                              News Of 700 Crore Aid From UAE ____ From Both Countries: Pinarayi _______ 
                              </a>
                           </dd>
                        </dl>
                     </div>
                     <dd></dd>
                  </div>
               </div>
            </div>
         </div>
         </div> 
      </footer>
      <!-- Modal -->
      <div class="modal fade loginmodel" id="myModal" tabindex="-1" role="dialog">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-body">
                  <div class="container1">
                     <div class="card"></div>
                     <div class="card">
                        <h1 class="title">Login </h1>
                        <form method="POST" action="http://www.risingelection.com/user/index1.php">
                           <div class="input-container">
                              <input type="text" id="Username1" name="username" required="required" />
                              <label for="Username">Username </label>
                              <div class="bar"></div>
                           </div>
                           <div class="input-container">
                              <input type="password" id="Password1" name="password" required="required" />
                              <label for="Password">Password </label>
                              <div class="bar"></div>
                           </div>
                           <div class="button-container">
                              <button type="submit"><span>Go </span></button>
                           </div>
                           <br />
                           <div class="footer"><a href="#">Forgot your password? </a></div>
                        </form>
                     </div>
                     <div class="card alt">
                        <div class="toggle"></div>
                        <h1 class="title">
                           Register
                           <div class="close"></div>
                        </h1>
                        <form method="POST" action="http://www.risingelection.com/user/registration.php" id="ragisterform">
                           <div class="input-container">
                              <input type="text" id="Username" name="Username" required="required" />
                              <label for="Username">Name </label>
                              <div class="bar"></div>
                           </div>
                           <div class="input-container">
                              <input type="number" id="mob" name="mob" min="0" required="required" />
                              <label for="Username">Mobile Number </label>
                              <div class="bar"></div>
                           </div>
                           <div class="input-container">
                              <input type="text" id="email" name="email" required="required" onchange="emailv(this.value)" />
                              <div class="bar"></div>
                              <label for="Username">Email </label>
                              <div class="bar"></div>
                              <div class="erroremail"></div>
                           </div>
                           <div class="input-container">
                              <input type="password" id="Password" name="Password" required="required" />
                              <label for="Password">Password </label>
                              <div class="bar"></div>
                           </div>
                           <div class="input-container">
                              <input type="password" id="RepeatPassword" required="required" />
                              <label for="RepeatPassword">Repeat Password </label>
                              <div class="bar"></div>
                           </div>
                           <div class="button-container">
                              <button type="submit"><span>Next </span></button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="http://www.risingelection.com/js/jquery.min.js"></script>
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
      <script src="http://www.risingelection.com/js/jquery-ui.js"></script>
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.validate.min.js"> </script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="http://www.risingelection.com/js/bootstrap.min.js"></script>
      <script src="http://www.risingelection.com/js/lightbox.js"></script>
      <script src="http://www.risingelection.com/js/jquery.fancybox.js"></script>
      <script src="http://www.risingelection.com/js/jquery.fancybox.pack.js"></script>
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.mousewheel.pack.js"></script>
      <!-- Add fancyBox main JS and CSS files -->
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.fancybox.pack.js"></script>
      <link rel="stylesheet" type="text/css" href="http://www.risingelection.com/css/jquery.fancybox.css" media="screen" />
      <!-- Add Button helper (this is optional) -->
      <link rel="stylesheet" type="text/css" href="http://www.risingelection.com/css/jquery.fancybox-buttons.css" />
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.fancybox-buttons.js"></script>
      <!-- Add Thumbnail helper (this is optional) -->
      <link rel="stylesheet" type="text/css" href="http://www.risingelection.com/css/jquery.fancybox-thumbs.css" />
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.fancybox-thumbs.js"></script>
      <!-- Add Media helper (this is optional) -->
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.fancybox-media.js"></script>
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.carouFredSel.js"> </script>
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
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.countdown.min.js"> </script>
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
      <script type="text/javascript" src="http://www.risingelection.com/js/jquery.countdown.min.js"> </script>
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
      <script type="text/javascript" src="js/jquery.carouFredSel.js"> </script>
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
   </body>
</html>