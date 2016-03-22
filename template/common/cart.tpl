<ul class="nav navbar-nav navbar-right cart-panel">
  <li class="dropdown">
    <a class="dropdown-toggle"
       data-toggle="dropdown"
       data-loading-text="<?php echo $text_loading; ?>"
    >
      <?php if ($products || $vouchers) {
            $countProducts = 0;
            $countVouchers = 0;
            if (isset($products)) {
                foreach ($products as $product) {
                    $countProducts += $product['quantity'];
                }
            }

            if (isset($vouchers)) {
                $countVouchers = count($vouchers);
            }

            $countProducts += $countVouchers;
            if ($countProducts > 0) {
              echo '<span class="badge" id="cart-total">'.$countProducts.'</span>';
            } else {
              echo '<span class="badge" id="cart-total"></span>';
            }
      }?>
      <i class="fa fa-shopping-cart"></i>
      <span class="visible-xs"><?php echo $text_cart; ?></span>
      <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
      <?php if ($products || $vouchers) { ?>
        <li class="cart-items">
          <?php foreach ($products as $product) { ?>
          <div class="cart-item">
            <a href="<?php echo $product['href']; ?>" class="cart-item__thumbnail">
              <?php if ($product['thumb']) { ?>
              <img
                      src="<?php echo $product['thumb']; ?>"
                      alt="<?php echo $product['name']; ?>"
                      title="<?php echo $product['name']; ?>"
              />
              <?php } ?>
            </a>
            <a href="<?php echo $product['href']; ?>" class="cart-item__name">
              <?php echo $product['name']; ?>
            </a>
            <div class="cart-item__amount">
              x <?php echo $product['quantity']; ?>
            </div>
            <div class="cart-item__total">
              <?php echo $product['total']; ?>
            </div>
            <a class="cart-item__delete"
               title="<?php echo $button_remove; ?>"
               onclick="cart.remove('<?php echo $product['cart_id']; ?>');"
            >
              <i class="fa fa-times"></i>
            </a>
            <div class="cart-item__properties">
              <?php if ($product['option']) { ?>
              <?php foreach ($product['option'] as $option) { ?>
              <br />
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
              <?php } ?>
              <?php } ?>
              <?php if ($product['recurring']) { ?>
              <br />
              - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
          <?php foreach ($vouchers as $voucher) { ?>
          <div class="cart-item">
            <div class="cart-item__thumbnail">
            </div>
            <div class="cart-item__name">
              <?php echo $voucher['description']; ?>
            </div>
            <div class="cart-item__amount">
              x&nbsp;1
            </div>
            <div class="cart-item__total">
              <?php echo $voucher['amount']; ?>
            </div>
            <a class="cart-item__delete"
               title="<?php echo $button_remove; ?>"
               onclick="cart.remove('<?php echo $product['cart_id']; ?>');"
            >
              <i class="fa fa-times"></i>
            </a>
          </div>
          <?php } ?>
        </li>
        <li>
          <div>
            <table class="table">
              <?php foreach ($totals as $total) { ?>
              <tr>
                <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                <td class="text-right"><?php echo $total['text']; ?></td>
              </tr>
              <?php } ?>
            </table>
            <p class="text-right">
              <a href="<?php echo $cart; ?>">
                <strong>
                  <i class="fa fa-shopping-cart"></i>
                  <?php echo $text_cart; ?>
                </strong></a>
              &nbsp;&nbsp;&nbsp;
              <a href="<?php echo $checkout; ?>">
                <strong>
                  <i class="fa fa-share"></i>
                  <?php echo $text_checkout; ?>
                </strong>
              </a>
            </p>
          </div>
        </li>
      <?php } else { ?>
        <li>
          <p class="text-center"><?php echo $text_empty; ?></p>
        </li>
      <?php } ?>
    </ul>
  </li>
</ul>
