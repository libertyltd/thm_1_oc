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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />

    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>

    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>

    <link href="catalog/view/theme/rusmoke/stylesheet/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
    <link href="catalog/view/theme/rusmoke/stylesheet/font-awesome.css" rel="stylesheet" type="text/css" media="screen">
    <!-- <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"> -->

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>

    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>

    <script src="catalog/view/theme/rusmoke/javascript/jquery/jquery-2.2.2.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/rusmoke/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>

    <script src="catalog/view/theme/rusmoke/javascript/common.js" type="text/javascript"></script>


    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>


    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>

<body class="<?php echo $class; ?>">

<nav class="navbar header-top-menu">
    <div class="container">
        <div class="navbar-header">
            <span class="visible-xs small-logo">
                <?php if ($logo) { ?>
                    <a href="<?php echo $home; ?>">
                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
                    </a>
                <?php } else { ?>
                    <h1>
                        <a href="<?php echo $home; ?>">
                            <?php echo $name; ?>
                        </a>
                    </h1>
                <?php } ?>
            </span>
            <button type="button"
                    class="btn btn-navbar navbar-toggle"
                    data-toggle="collapse"
                    data-target=".menu-collapsed">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div class="collapse navbar-collapse menu-collapsed">
            <?php if ($categories) { ?>
            <ul class="nav navbar-nav">
                <li class="visible-xs">
                    <a class="section-header">
                            <?php echo $text_category; ?>
                    </a>
                </li>
                <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li class="dropdown">
                        <a href="<?php echo $category['href']; ?>"
                           class="dropdown-toggle"
                           data-toggle="dropdown">
                            <?php echo $category['name']; ?>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="part-of-menu">
                                    <?php foreach ($children as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                                <?php } ?>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="<?php echo $category['href']; ?>"
                                   class="see-all">
                                    <?php echo $text_all; ?> <?php echo $category['name']; ?>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
            </ul>
            <?php } ?>
            <div class="header-control-panel">
                <?php echo $language; ?>
                <ul class="nav contacts-panel">
                    <li class="dropdown">
                        <?php echo $currency; ?>
                    </li>
                    <li class="dropdown">
                        <i class="fa fa-envelope-o" class="dropdown-toggle"
                           data-toggle="dropdown"></i>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i><span class="contacts-panel__item"><?php echo $telephone; ?></span></a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart" data-toggle="tooltip" data-placement="bottom" title="<?php echo $text_wishlist; ?>"></i> <span class="hidden-sm hidden-md hidden-lg"><?php echo $text_wishlist; ?></span></a></li>
                </ul>
                <?php echo $cart; ?>
            </div>
        </div>
    </div>
</nav>
<header class="header-middle-menu">
    <div class="container">
        <div class="header-middle-menu__body">

            <div class="header-middle-menu__logo">
                <?php if ($logo) { ?>
                <a href="<?php echo $home; ?>">
                    <img src="<?php echo $logo; ?>"
                         title="<?php echo $name; ?>"
                         alt="<?php echo $name; ?>"
                         class="img-responsive" />
                </a>
                <?php } else { ?>
                <h1>
                    <a href="<?php echo $home; ?>">
                        <?php echo $name; ?>
                    </a>
                </h1>
                <?php } ?>
            </div>

            <div class="header-middle-menu__search">
                <?php echo $search; ?>
            </div>

            <div class="header-middle-menu__auth">
                <div class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-menu-right">
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
            </div>

        </div>
    </div>
</header>
