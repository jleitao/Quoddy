<html>
    <head>
        <title>
          <g:layoutTitle default="Quoddy" />
        </title>
        <nav:resources />
        <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css', file:'main.css')}" />
        <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css', file:'bootstrap.min.css')}" />
        <link rel="stylesheet" type="text/css" href="/css/reset-min.css">
        <link rel="stylesheet" type="text/css" href="/css/fonts-min.css">             
        <link rel="stylesheet" type="text/css" href="/css/grids-min.css">
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssgrids/grids-min.css" />
       
        
        <g:javascript library="jquery-1.4" />
        <g:javascript>
          var $j = jQuery.noConflict();
        </g:javascript>

        <g:javascript library="dropdown" />
        <g:javascript library="jquery.timers-1.2" />
        
	    <script type="text/javascript">
        	<g:render template="/javascript/application.js"/>
    	</script>
        
        <g:layoutHead />
                				
    </head>
    <body>
   
<!-- begin customizable header -->
 
    	<div id="gbw" class="headerNavContainer">
				<div class="headerNav">
    			<ul class="customNav">
						<li><h1><a href="${createLink(controller:'home', action:'index')}">Quoddy</a></h1></li>
    				<li><a href="#">Email</a></li>
    				<li><a href="${createLink(controller:'user', action:'listFriends')}">Friends</a></li>
    				<li><a href="${createLink(controller:'user', action:'listFollowers')}">Followers</a></li>
    				<li><a href="#">Reports</a></li>
    				<li><a href="#">Calendar</a></li>
    				<li><a href="#">Apps</a></li>
    			</ul>
					<div id="gbg" class="settingsNav navBar">
						<ul>
							<li><a href="#">Home</a></li>
							<li class="dropdown" id="menu1"><a class="dropdown-toggle" data-toggle="dropdown" href="#menu1">My Account<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="${createLink(controller:'user', action:'editAccount')}">Edit Account Info</a></li>
									<li><a href="${createLink(controller:'user', action:'editProfile')}">Edit Profile</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</li>
							<g:if test="${session.enable_self_registration == true}">
							<!-- /user/create -->
							<li><a href="${createLink(controller:'user', action:'create')}">Register</a></li>
							</g:if>
							<li><a href="${createLink(controller:'login') }">Login</a></li>
								<g:if test="${session.user != null}">
							<li><a href="${createLink(controller:'login', action:'logout')}">Logout</a></li>
							</g:if>
						</ul>	

					</div>
				</div>
			</div>
    	
    	
       	<div id="body" class="yui3-g">
            
			<div class="yui3-u-5-24">
 
 				<p style="font-weight:bold;float:right;margin-right:45px;">
 					<g:render template="/leftSidebar" />				
 				</p>
 				
        	</div>
        	
        	<div class="yui3-u-7-12">
        	
	    		<!-- layout main content area -->
          <g:form controller="search" action="doSearch" method="GET">
                <input name="queryString" type="text" class="searchbox" />
                <input type="submit" value="Search" id="searchBtn" />
          </g:form>
	    	   	<g:layoutBody /> 
 
        	</div>
    	
    		<div class="yui3-u-5-24">
    		
	    		<p style="font-weight:bold;float:left;margin-left:45px;">
	    			<g:render template="/rightSidebar" />	    		
	    		</p>
    		</div>
    	</div> <!--  "body" -->
               
       	<div id="footer">
                    
            <!-- TODO: replace this with a template gsp -->
            <!-- footer -->
            <div>
                 <center>Footer for Quoddy</center>
           	</div>
       	</div>      
    </body>	
</html>
