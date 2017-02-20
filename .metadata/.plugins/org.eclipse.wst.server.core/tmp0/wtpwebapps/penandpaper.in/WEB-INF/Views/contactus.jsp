  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Resources/css/contactus.css">
  <title>ContactUs-penandpaper.ins</title>
  <%@ include file="header.jsp" %>
  <body style="background-color:#EEEEEE;">
  <div class="container">
  <div class="row">
  <div class="col-sm-8">
<img class="img-responsive" width="70%" src="Resources/images/contact us.png"></img>
               </div>
               <div class="col-sm-4">
               <div class="text-center center-block">
            <p class="txt-railway"><h4><strong>Follow Us on:</strong></h4></p>
          
   
                <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
</div>
            </div>
  
               </div></div>
 <div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-sm-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>penandpaper.in</strong><br>
                2130-A South Ex<br>
                New Delhi-110054 (INDIA)<br>
                <abbr title="Phone">
                    Phone:</abbr>
                +91-9818377157 
            </address>
            <address>
                <strong>Manish Sharma</strong><br>
                <a href="mailto:#">manish@penandpaper.in</a>
            </address>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
