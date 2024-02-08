<div class="navbar" id="nav">
    <img src="images/elab.png" alt="" class="elab">
    <hr>
    <img src="images/bharat.svg" alt="" class="">

    <img src="images/azadi_mahotsav.svg" alt="" class="">
    <hr>
    <img src="images/G20logo.png" alt="" class="">

    <div class="d-flex navlogin">
      <a class="nav-link active ">
      <%String email=(String) session.getAttribute("eid");
 		if(email!=null)
        {
        	%>
        	<a class="nav-link active" aria-current="page" href="logout">
        	<i class="fa-solid fa-user" style="color: #276add;"></i>
            Logout</a>
            <%
            }
            else
            {
            %>
            <a class="nav-link active" aria-current="page" href="login">
            <i class="fa-solid fa-user" style="color: #276add;"></i>
            Login</a>
                            
                        
            <% }%>
      </a>
    </div>

  </div>

  <nav class="navbar navbar-expand-lg bg-body-primary navbg sticky-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="adminhome">e-Lab</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="adminhome">Admin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="aboutadmin">About Us</a>
          </li>

         <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="adminalltest">All Test</a>
          </li>

          
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="order">Order</a>
          </li>


			<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="addtest">Add Test</a>
          </li>
</ul>
      </div>
    </div>
  </nav>
