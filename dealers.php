<!doctype html>
<head>
<meta charset="utf-8">
<title>AutoSTC - Дилери</title>
<?php include 'include.php'; ?>

<!-- gMap -->
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="js/jquery.gmap.min.js"></script>
</head>

<body>
<div class="body_wrap">
	<?php include 'header.php'; ?>

<div class="header header_map">

	<div id="header_map"></div>
	<script>
	    $(window).ready(function ()
			{
	        $("#header_map").gMap({

	            markers: [
{
	latitude: 49.151239,
	longitude: 28.793529,
	title: "АutoSTC Дилер №8",
	html:"<strong>АutoSTC Дилер №8</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 49.433650,
	longitude: 26.994781,
	title: "АutoSTC Дилер №1",
	html:"<strong>АutoSTC Дилер №1</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 49.839824,
	longitude: 24.033529,
	title: "АutoSTC Дилер №2",
	html:"<strong>АutoSTC Дилер №2</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 50.490798,
	longitude: 30.434500,
	title: "АutoSTC Дилер №3",
	html:"<strong>АutoSTC Дилер №3</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 51.500257,
	longitude: 31.541490,
	title: "АutoSTC Дилер №4",
	html:"<strong>АutoSTC Дилер №4</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 49.530622,
	longitude: 34.804429,
	title: "АutoSTC Дилер №5",
	html:"<strong>АutoSTC Дилер №5</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 47.781856,
	longitude: 35.386704,
	title: "АutoSTC Дилер №6",
	html:"<strong>АutoSTC Дилер №6</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
},
{
	latitude: 44.525956,
	longitude: 34.063529,
	title: "АutoSTC Дилер №7",
	html:"<strong>АutoSTC Дилер №7</strong><br><a href='#' class='btn btn_default'><span>Детальніше</span></a>",
	popup: false,
	icon: { image: 'http://billfoxusedcars.com/images/icons/gmap_icon.png',iconsize: [74, 88],iconanchor: [37,88],infowindowanchor: [0, 0] }
}
			],
	            		zoom: 6,
				scrollwheel: false,
	lat: 48.6000924,
        lng: 32.0538061
	            });
	        });
	</script>

</div> 

	<div class="middle_row row_white search_row contact_form">
		<div class="container">
			
            <!-- contact form -->               
            <form action="#" method="post" id="contactForm" class="clearfix ajax_form">
                
                <div class="form_col_1">
                    <div class="row alignleft field_text">
                        <label class="label_title">Ім’я:</label>
                        <input type="text" name="yourname" id="name" value="" class="inputField required">
                    </div>
                                                          
                    <div class="row alignleft field_text omega">
                        <label class="label_title">Email:</label>
                        <input type="text" name="email" id="email" value="" class="inputField required">
                    </div>
                                       
                    <div class="row field_select alignleft">
                        <label class="label_title">Тема:</label>
                        <select class="select_styled" name="subject" id="subject">
                            <option value="val">Подяка</option>
                            <option value="val">Пропозиція</option>
                            <option value="val">Питання</option>
                            <option value="val">Скарга</option>
                        </select>
                    </div>
                    
                    <div class="row field_text alignleft omega">
                        <label class="label_title">Телефон:</label>
                        <input type="text" name="phone" id="phone" value="" class="inputField">
                    </div>
                </div>
                
                <div class="form_col_2">                
                    <div class="row">
                        <label class="label_title">Повідомлення:</label>
                        <textarea cols="30" rows="10" name="message" id="message" class="textareaField required"></textarea>
                    </div>
                </div>
                
                <div class="form_col_3">
                    <a onclick="document.getElementById('contactForm').reset();return false" href="#" class="link-reset">Очистити</a>
                    <div class="row rowSubmit clearfix">
                        <input type="submit" value="Відправити" id="send" class="btn btn-submit">
                    </div>
                </div>
            </form>
            <!--/ contact form --> 
		</div>
	</div>

<?php include 'footer.php'; ?>

</div>
</body>
</html>
