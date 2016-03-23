<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
  <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
      <strong
              class="dropdown-toggle"
              data-toggle="dropdown"
      ><?php echo $currency['symbol_left']; ?></strong>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
      <strong
              class="dropdown-toggle"
              data-toggle="dropdown"
      ><?php echo $currency['symbol_right']; ?></strong>
    <?php } ?>
  <?php } ?>
  <span class="hidden-sm hidden-md dropdown-toggle" data-toggle="dropdown">
      <?php echo $text_currency; ?>
  </span>
  <i class="fa fa-caret-down dropdown-toggle" data-toggle="dropdown"></i>

  <ul class="dropdown-menu">
    <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li>
        <button
                class="currency-select btn btn-link btn-block"
                type="button"
                form="currency"
                name="<?php echo $currency['code']; ?>">
          <?php echo $currency['symbol_left']; ?>
          <?php echo $currency['title']; ?>
        </button>
      </li>
      <?php } else { ?>
        <li>
          <button
                  class="currency-select btn btn-link btn-block"
                  type="button"
                  form="currency"
                  name="<?php echo $currency['code']; ?>">
            <?php echo $currency['symbol_right']; ?>
            <?php echo $currency['title']; ?>
          </button>
        </li>
      <?php } ?>
    <?php } ?>
  </ul>
    <input type="hidden" name="code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </form>
<?php } ?>
