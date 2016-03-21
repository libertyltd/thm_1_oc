<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
    <ul class="nav navbar-nav navbar-right language-panel">
        <li class="visible-xs">
          <a>
          <span class="section-header">
            <?php echo $text_language; ?>
          </span>
          </a>
        </li>
        <?php foreach ($languages as $language) { ?>
        <li>
          <a href="<?php echo $language['code']; ?>"
          <?php if ($language['code'] == $code) { ?>
          class="current"
          <?php } ?>
          data-toggle="tooltip"
          data-placement="bottom"
          title="<?php echo $language['name']; ?>"
          >
            <?php echo ucfirst($language['code']); ?>
          </a>
        </li>
        <?php } ?>

        <input type="hidden" name="code" value="" />
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
</form>
<?php } ?>
