<footer>
    <div class="footer0">
      <h1>e-Test</h1>
    </div>
    <div class="footer1 ">
            Connect with us at
            <div class="social-media">
                <a href="https://www.linkedin.com/in/noman-quamar-99161a19b/">
                    <icon-icon name="logo-linkedin"></icon-icon>
                </a>
                <a href="https://www.instagram.com/noman.quamar.3/">
                    <icon-icon name="logo-instagram"></icon-icon>
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
        <div class="div"><a class="nav-link active ">
      <%String email=(String) session.getAttribute("eid");
 		if(email!=null)
        {
        	%>
        	<a class="nav-link active" aria-current="page" href="logout">
        	<i class="fa-solid fa-user" style=""></i>
            Logout</a>
            <%
            }
            else
            {
            %>
            <a class="nav-link active" aria-current="page" href="login">
            <i class="fa-solid fa-user" style=""></i>
            Login</a>
                            
                        
            <% }%>
      </a></div>
      </div>
    </div>
    <div class="footer3">Copyright &copy; made by &nbsp; MD NOMAN QUAMAR </div>
  </footer>

</body>

</html>
</body>
</html>