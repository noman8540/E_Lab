<footer>
    <div class="footer0">
      <h1>e-Test</h1>
    </div>
    <div class="footer1 ">
      Connect with us at<div class="social-media">
        <a href="#">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a>
        <a href="#">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a>
        <a href="#">
          <ion-icon name="logo-instagram"></ion-icon>
        </a>
        <a href="#">
          <ion-icon name="logo-instagram"></ion-icon>
        </a>

      </div>
    </div>
    <div class="footer2">
      <div class="product">
        <div class="heading">Products</div>
        <div class="div">Our Products</div>
        <div class="div">Cart</div>

      </div>
      <div class="services">
        <div class="heading">Services</div>
        <div class="div">Return</div>
        <div class="div">Cash Back</div>
      </div>
      <!-- <div class="Company">
            <div class="heading">Company</div>
            <div class="div">Complaint</div>
            <div class="div">Careers</div>
        </div> -->
      <div class="Get Help">
        <div class="heading">Get Help</div>
        <div class="div">Help Center</div>
        <div class="div">Terms & Condition</div>
        <div class="div">
        <%String email=(String) session.getAttribute("eid");
		if(email!=null)
        {
        	%>
        	<a class="nav-link active" aria-current="page" href="logout">
        	Logout</a>
            <%
            }
            else
            	{
                	%>
                	<a class="nav-link active" aria-current="page" href="login">
                	Login</a>
                            
                        
                    <% }%></div>
      </div>
    </div>
    <div class="footer3">Copyright &copy; made by &nbsp; MD NOMAN QUAMAR </div>
  </footer>

</body>

</html>
</body>
</html>