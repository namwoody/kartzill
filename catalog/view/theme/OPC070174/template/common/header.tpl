<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<link href="https://fonts.googleapis.com/css?family=Istok+Web:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:400,700" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,700,500' rel='stylesheet' type='text/css' />

<link href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/stylesheet.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/bootstrap.min.css" />

<?php if($direction=='rtl'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/megnor/rtl.css">
<?php }?>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!-- Megnor www.templatemela.com - Start -->
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/listgrid.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/scrolltop.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.formalize.min.js"></script> 
<script src="catalog/view/javascript/megnor/tabs.js" type="text/javascript"></script>
<!-- Megnor www.templatemela.com - End -->

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<?php if ($column_left && $column_right) { ?>
<?php $layoutclass = 'layout-3'; ?>
<?php } elseif ($column_left || $column_right) { ?>
<?php if ($column_left){ ?>
<?php $layoutclass = 'layout-2 left-col'; ?>
<?php } elseif ($column_right) { ?>
<?php $layoutclass = 'layout-2 right-col'; ?>
<?php } ?>
<?php } else { ?>
<?php $layoutclass = 'layout-1'; ?>
<?php } ?>
<body class="<?php echo $class;echo " " ;echo $layoutclass; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
		<div class="dropdown myaccount tm_headerlinkmenu">
			<div class="tm_headerlinks_inner">
				<div class="headertoggle_img"></div>
			</div>
			 <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
				<?php if ($logged) { ?>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
				<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				<?php } else { ?>
				<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
				<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
				<?php } ?>
			</ul>

		</div>
	
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li class="contact-cms"><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown myaccount"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md">					<?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        
        <li class="checkout-cms"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4 header-logo">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
       <div class="col-sm-3">
	<div class="content_headercms_top"><?php echo $headertop; ?> </div>
	   <?php echo $cart; ?></div>
      </div>
     
	  <div class="col-sm-5 header-search"><?php echo $search; ?>
    </div>
  </div>
</header>
 <div class="nav-inner-cms">
  <div class="header-bottom">
	<div class="main-menu" id="cms-menu">
        <ul class="main-navigation">

			<li class="first level0"><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			
            <li class="level0"><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
               
            <li class="level0"><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>   
                
            <li class="level0"><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li> 
                
            <li class="level0"><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                
            <li class="last level0"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              
         </ul>
     </div>
     </div>
</div>

<div class="content_headercms_bottom"><?php echo $headerbottom; ?> </div>

<nav class="nav-container" role="navigation">
<div class="nav-inner">
<!-- ======= Menu Code START ========= -->
<?php if ($categories) { ?>
<!-- Opencart 3 level Category Menu-->
<div class="container">
<div id="menu" class="main-menu">

<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
  <ul class="main-navigation">
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
         <?php for (; $i < count($category['children']); $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>										
				<li>
				<?php if(count($category['children'][$i]['children_level2'])>0){ ?>
					<a href="<?php echo $category['children'][$i]['href']; ?>" class="activSub" ><?php echo $category['children'][$i]['name'];?></a> 					
				<?php } else { ?>				
					<a href="<?php echo $category['children'][$i]['href']; ?>" ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>
				<?php if ($category['children'][$i]['children_level2']) { ?>
				<ul class="col<?php echo $j; ?>">
				<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
					<li><a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></a></li>
				 <?php } ?>
				</ul>
			  <?php } ?>		  
			</li>		
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<!-- ======= Menu Code END ========= -->
</div>
</div>
</nav>   
