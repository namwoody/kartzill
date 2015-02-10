<?php echo $header; ?>
<div class="container ">
<ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
		  
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row category_thumb">
        <?php if ($thumb) { ?>
        <div class="col-sm-2 category_img"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10 category_description"><?php echo $description; ?></div>
        <?php } ?>
      </div>
    
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div >
        <div class="col-sm-12 category_list">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div >
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
     <div class="pagger">
      <div class="category_filter">
        <div class="col-md-4 btn-list-grid">
          <div class="btn-group">
            <button type="button" id="list-view" class="btn btn-default list" data-toggle="tooltip" title="<?php echo $button_list; ?>"></button>
            <button type="button" id="grid-view" class="btn btn-default grid" data-toggle="tooltip" title="<?php echo $button_grid; ?>"></button>
          </div>
		   <div class="compare-total"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
        </div>
		<div class="pagiantion-right">
        <div class="col-md-2 text-right sort-by">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right sort">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right limit-by">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right limit">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
	  </div>
	  </div>
      
      <div >
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
		  <div class="product-block-inner ">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<?php if (!$product['special']) 
					{ ?> <?php } else { ?>
						<span class="saleicon sale">Sale</span>         
				 <?php } ?>
			</div>
            <div class="list-grid-detail">
			<div class="btn-list-grid">
			 <div class="button-group">
                <button type="button" title="<?php echo $button_cart; ?>" data-toggle="tooltip" onclick="cart.add('<?php echo $product['product_id']; ?>'); "><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" class="wishlist_button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>
                <button type="button" class="compare_button"  data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
              </div>
			  </div> <!--End btn-list-grid-->
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <div class="desc"><?php echo $product['description']; ?></div>
               
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span> 
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
				 <?php /*?><?php if ($product['rating']) { ?><?php */?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
               <?php /*?> <?php } ?><?php */?>
				<div class="btn-wish-compare">
					 <div class="button-group">
						 <button type="button" class="wishlist_button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>
						 <button type="button" class="compare_button"  data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
					 </div>
				</div>
				
				
              </div>  <!--End caption-->
             <div class="list-right">
					 <div class="list-right-price">
						  <?php if ($product['price']) { ?>
							<p class="price">
							  <?php if (!$product['special']) { ?>
							  <?php echo $product['price']; ?>
							  <?php } else { ?>
							  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span> 
							  <?php } ?>
							  <?php if ($product['tax']) { ?>
							  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
							  <?php } ?>
							 </p>
						 <?php } ?>
					</div>
					<div class="list-buttoncart">  
							 <div class="button-group">
							 	 <button class="btn-cart" type="button" title="<?php echo $button_cart; ?>" data-toggle="tooltip" onclick="cart.add('<?php echo $product['product_id']; ?>'); "><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
							 </div>
					</div><!--End list-buttoncart-->
				
			 </div><!--End list-right-->
			 
            </div>
          </div>
		  </div>
        </div>
        <?php } ?>
      </div>
     
		<div class="paginationresult">
			<div class="col-sm-6 text-left show-result"><?php echo $results; ?></div>
			<div class="col-sm-6 text-right	"><?php echo $pagination; ?></div>
		</div>
      
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>