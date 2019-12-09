<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 3D text tag css -->
<link href="https://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">

<!-- switch버튼 css -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/switch-master/css/style.css">	


<!-- jQuery Bootstrap News Box Plugin Demos -->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
<link href="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/css/site.css" rel="stylesheet" type="text/css" />
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/scripts/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>

<style>
    body { font-family: 'Open Sans'; text-align: center; background: #fafafa; }
    .light { background: #666; color: #fff; }
   /*  .content .tagcloud { display: inline-block; margin: 20px; } */
    ul { display: inline-block; }
    a { color: #0366d6; text-decoration: none; }
    a:hover { text-decoration: underline; }
</style>
<style>
/* 3D text tag css*/
 .tagcloud {
     font-size: 16px;
 }
 .tagcloud--item {
     padding: 2px 4px;
     background-color: transparent;
     border: 1px solid transparent;
     cursor: pointer;
 }
 .tagcloud--item:hover {
     background-color: rgba(0,0,0,.1);
     border: 1px solid #333;
     -webkit-border-radius: 2px;
     -moz-border-radius: 2px;
     border-radius: 2px;
     opacity: 1 !important;
     z-index: 100 !important;
 }
 .light .tagcloud--item {
     color: #fff;
 }
 .light .tagcloud--item:hover {
     background-color: rgba(255,255,255,.1);
     border: 1px solid #fff;
 }
 
 
</style>

    
</head>
<body>
	<%-- <jsp:include page ="common/header.jsp"/>
	<jsp:include page ="common/mainHome.jsp"/>  --%>

<jsp:include page ="common/menubar.jsp"/>
<div id="container" style="overflow: auto; height: 800px;" ><!-- container -->

	    
<div class="content">
    <!-- content -->
</div>

<script type="text/javascript" src="js/TagCloud-master/dist/TagCloud.min.js"></script>
	    
	<script>
	    var texts = [
	        '다이어트', '운동', '식단조절',
	        '칼로리', '홈트레이닝', '꿀팁',
	        'BMI', '다이어트일지', '비포&애프터',
	        '요요현상', '헬스', '단백질보충',
	    ];
	    var tc = TagCloud('.content', texts);
	    	console.log(tc);
	
	    function toDefault() {
	        document.body.classList.remove('light');
	    }
	    function toLight() {
	        document.body.classList.add('light');
	    }
	    function addTag() {
	        if (!tc) return;
	        texts = texts.concat(['MoreTag']);
	        tc.update(texts);
	    }
	    function removeTag() {
	        if (!tc) return;
	        texts.pop();
	        tc.update(texts);
	    }
	    var moreTcs = [];
	    function toCreate() {
	        var tc = TagCloud('.content', [
	        	'다이어트', '운동', '식단조절',
	         '칼로리', '홈트레이닝', '꿀팁',
	         'BMI', '다이어트일지', '비포&애프터',
	         '요요현상', '헬스', '단백질보충',
	        ]);
	        moreTcs.push(tc);
	    }
	    function toDestroy() {
	        var last = moreTcs[moreTcs.length - 1];
	        if (!last) return;
	        last.destroy();
	        moreTcs.pop();
	    }
	</script>
	<script>
		try {
		  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
		    return true;
		  }).catch(function(e) {
		    var carbonScript = document.createElement("script");
		    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CE7DC2JW&placement=wwwcssscriptcom";
		    carbonScript.id = "_carbonads_js";
		    document.getElementById("carbon-block").appendChild(carbonScript);
		  });
		} catch (error) {
		  console.log(error);
		}
	</script>
	<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-46156385-1', 'cssscript.com');
		  ga('send', 'pageview');
	
	</script>

	<!-- switch버튼 css -->
	       <div class="css-script-ads" style="margin:30px auto">
		    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- CSSScript Demo Page -->
			<ins class="adsbygoogle"
			     style="display:inline-block;width:728px;height:90px"
			     data-ad-client="ca-pub-2783044520727903"
			     data-ad-slot="3025259193"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		</div>
	           <label class="switch">
	             <input type="checkbox" checked>
	             <span></span>
	           </label>
	
	<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-46156385-1', 'cssscript.com');
		  ga('send', 'pageview');
	</script>


<!-- jQuery Bootstrap News Box Plugin Demos -->
<h1 style="margin-top:150px" align="center">jQuery Bootstrap News Box Plugin Demos</h1>
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
						<ul class="demo1">
							<li class="news-item">
							<table cellpadding="4">
								<tr>
									<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/1.png" width="60" class="img-circle" /></td>
									<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
								</tr>
							</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/2.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/3.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/4.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/5.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/6.png" width="60" class="img-circle" /></td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
							<li class="news-item">
								<table cellpadding="4">
									<tr>
										<td><img src="js/Responsive-jQuery-News-Ticker-Plugin-with-Bootstrap-3-Bootstrap-News-Box/images/7.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
									</tr>
								</table>
							</li>
						</ul>
						</div>
					</div>
				</div>
				<div class="panel-footer"> </div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<ul class="demo2">
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
								<li class="news-item">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></li>
							</ul>
						</div>
					</div>
				</div>
			<div class="panel-footer"> </div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="panel panel-default">
			<div class="panel-heading"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<ul id="demo3">
								<li class="news-item">Curabitur porttitor ante eget hendrerit adipiscing. Maecenas at magna accumsan,
																		rhoncus neque id, fringilla dolor. <a href="#">Read more...</a></li>
								<li class="news-item">Curabitur porttitor ante eget hendrerit adipiscing. Maecenas at magna accumsan,
																		rhoncus neque id, fringilla dolor. <a href="#">Read more...</a></li>
								<li class="news-item">Praesent ornare nisl lorem, ut condimentum lectus gravida ut. Ut velit nunc, vehicula
																		volutpat laoreet vel, consequat eu mauris. <a href="#">Read more...</a></li>
								<li class="news-item">Nunc ultrices tortor eu massa placerat posuere. Vivamus viverra sagittis nunc. Nunc
																		et imperdiet magna. Mauris sed eros nulla. <a href="#">Read more...</a></li>
								<li class="news-item">Morbi sodales tellus sit amet leo congue bibendum. Ut non mauris eu neque fermentum
																		pharetra. <a href="#">Read more...</a></li>
								<li class="news-item">In pharetra suscipit orci sed viverra. Praesent at sollicitudin tortor, id sagittis
																		magna. Fusce massa sem, bibendum id. <a href="#">Read more...</a> </li>
								<li class="news-item">Maecenas nec ligula sed est suscipit aliquet sed eget ipsum. Suspendisse id auctor
																		nibh. Ut porttitor volutpat augue, non sodales odio dignissi id. <a href="#">Read more...</a></li>
								<li class="news-item">Onec bibendum consectetur diam, nec euismod urna venenatis eget. Cras consequat
																		convallis leo. <a href="#">Read more...</a> </li>
							</ul>
						</div>
					</div>
				</div>
			<div class="panel-footer"> </div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function () {
        $(".demo1").bootstrapNews({
            newsPerPage: 3,
            autoplay: true,
			pauseOnHover:true,
            direction: 'up',
            newsTickerInterval: 4000,
            onToDo: function () {
                //console.log(this);
            }
        });
		
		$(".demo2").bootstrapNews({
            newsPerPage: 4,
            autoplay: true,
			pauseOnHover: true,
			navigation: false,
            direction: 'down',
            newsTickerInterval: 2500,
            onToDo: function () {
                //console.log(this);
            }
        });

        $("#demo3").bootstrapNews({
            newsPerPage: 3,
            autoplay: false,
            
            onToDo: function () {
                //console.log(this);
            }
        });
    });
</script>


</div>



</body>
<footer>
	<jsp:include page ="common/footer.jsp"/>
</footer>
</html>
