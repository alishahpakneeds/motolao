<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>Motolao</title> 
        <meta name="description" content="Motolao"/>
        <meta name="keywords" content="Motolao" />
        <meta name="author" content="Motolao"/>
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: Facebook Open Graph -->
        <meta property="og:title" content=""/>
        <meta property="og:description" content=""/>
        <meta property="og:type" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:image" content=""/>
        <!-- end: Facebook Open Graph -->

        <!-- start: CSS -->
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/assets/css/bootstrap.css" rel="stylesheet" />
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/assets/css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/assets/css/style.css" rel="stylesheet" />
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/assets/css/main-style.css" rel="stylesheet" />
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/assets/css/stylesheet.css" rel="stylesheet" />

        <!-- end: CSS -->

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/jquery-2.1.1.min.js"></script>
        

    </head>
    <body>

        <!--start: Header -->
        <header>

            <!--start: Container -->
            <div class="container">

                <!--start: Row -->
                <div class="row">

                    <!--start: Logo -->
                    <div class="logo span3">

                        <a class="brand" 
                           href="<?php echo $this->createUrl(Yii::app()->homeUrl[0]); ?>" 
                           title="<?php echo Yii::t("links", "Motolao I Adventure Tours in Laos"); ?>">
                            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/img/logo.png" alt="Motolao Logo" title="Motolao I Adventure Tours in Laos" />
                        </a>						
                    </div>
                    <!--end: Logo -->

                    <!--start: Navigation -->
                    <div class="span9">

                        <div class="navbar navbar-inverse">
                            <?php $this->renderPartial("//layouts/_menu"); ?>
                        </div>

                    </div>	
                    <!--end: Navigation -->

                </div>
                <!--end: Row -->

            </div>
            <!--end: Container-->			

        </header>
        <!--end: Header-->
        <?php
        //load banner module
        if (!empty($this->page_key)) {
            $this->renderPartial("//pluggins/banner");
        }
        ?>

        <!--start: Wrapper-->
        <div id="wrapper">
            <?php echo $content; ?>
        </div>
        <!-- end: Wrapper  -->			

        <!-- start: Footer Menu -->
        <div id="footer-menu" class="hidden-tablet hidden-phone">

            <!-- start: Container -->
            <div class="container">

                <!-- start: Row -->
                <div class="row">

                    <!-- start: Footer Menu Links-->
                    <div class="span9">

                        <div id="footer-menu-links">

                            <ul id="footer-nav">

                                <li><a href="<?php echo $this->createUrl("/web/default/about"); ?>" title=""><?php echo Yii::t("links", "ABOUT US"); ?> </a></li>

                                <li><a href="<?php echo $this->createUrl("/web/default/terms"); ?>" title=""><?php echo Yii::t("links", "TERMS AND CONDITIONS"); ?></a></li>

                                <li><a href="<?php echo $this->createUrl("/web/default/sitemap"); ?>" title=""><?php echo Yii::t("links", "SITEMAP"); ?></a></li>

                            </ul>

                        </div>

                    </div>
                    <!-- end: Footer Menu Links-->

                    <!-- start: Footer Menu Back To Top 
                    <div class="span1">
                                    
                            <div id="footer-menu-back-to-top">
                                    <a href="javascript:void(0)" title=""></a>
                            </div>
                    
                    </div>
                     end: Footer Menu Back To Top -->

                </div>
                <!-- end: Row -->
                <div id="footer-extramenu-links">

                    <ul id="footerextra-nav">
                        <?php
                        $socialMedia = SocialMediaLink::model()->findAll();
                        foreach ($socialMedia as $social):
                            ?>
                            <li><a href="<?php echo $social->url != "" ? $social->url : "javascript:void(0)"; ?>" title="">
                                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/img/icons/social/<?php echo $social->meta_tag; ?>" 
                                         alt="tour" title=""><?php echo $social->title; ?></a>

                            </li>
                            <?php
                        endforeach;
                        ?>
                    </ul>

                    <div class="copyrights"><?php echo Yii::t("layout", "Copyrights MOTOLAO 2014"); ?></div>

                </div>
            </div>
            <!-- end: Container  -->	

        </div>
        <!-- end: Footer -->



        <!-- start: Java Script -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/jquery-2.1.1.min.js"></script>
        <script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/bootstrap.js"></script>
        <script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/flexslider.js"></script>
        <script src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/slider.js"></script>
        <script defer="defer" src="<?php echo Yii::app()->theme->baseUrl; ?>/assets/js/custom.js"></script>
        <!-- end: Java Script -->

    </body>
</html>