  <!DOCTYPE html>
 <html lang="en">
 <%@include file="election_head.jsp"%>
   <body>

  <%@include file="election_header.jsp"%>

  <div class="innerbannerfooter">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <h1></h1>

            <div class="bread-crum">
                     <ol class="breadcrumb">
            <li><a href="http://www.risingelection.com/">Home </a></li>
              <li><a href=""></a></li>
            <li class="active"></li>
          </ol>
                    </div>

        </div>

      </div>
    </div>
  </div>
 <div id="innerpage" class="graybg">
   <div class="container">
     <div class="row">


     </div>
   </div>
 </div>
 <div class="clearfix"></div>
 <footer>
 
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
 </dl></div>             <dd></dd>
           
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
           <h1 class="title">Register
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

      <%@include file="election_footer.jsp"%>
	  <%@include file="commons_script.jsp"%>
 </body>
 </html>
 