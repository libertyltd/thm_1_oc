<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
    <ul class="nav navbar-nav navbar-right language-panel">
        <?php foreach ($languages as $language) { ?>
        <li>
          <a href="<?php echo $language['code']; ?>">
            <?php echo ucfirst($language['code']); ?>
          </a>
        </li>
        <?php } ?>

      <!--
        <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
        <?php foreach ($languages as $language) { ?>
        <?php if ($language['code'] == $code) { ?>
        <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
        <?php } ?>
        <?php } ?>
        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_language; ?></span> <i class="fa fa-caret-down"></i></button> -->


        <input type="hidden" name="code" value="" />
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
</form>
<?php } ?>
