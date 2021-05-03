<!doctype html>
<html dir="{{::(conf.availableLanguages[env.lang].rtl ? 'rtl' : 'ltr')}}"
      ng-class="{'integration-auto-height': confPartner.notifyOnResize}"
      lang="{{::(conf.availableLanguages[env.lang].short.toLowerCase())}}">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    
    
    <title ng-bind="siteTitle">PlatinSport - Sport betting, Poker, Casino, Online Games</title>
    <meta name="description" content="PlatinSport Bookmaking Company is one of the leading betting sites. Wide range of sports live streams of football, basketball, volleyball, tennis, ice hockey, horse racing etc. About 28,000 live matches yearly, poker events, casino, backgammon and 24 hours of Customer Support.">
    <meta name="keywords" content="sport betting,live sports betting,online betting,bet and win,online football,bet online,soccer bets,champions league,barclays premier league,football betting site">
    <link rel="icon" href="_favicon.ico?=20210406102823" />
    <link rel="stylesheet" href="skins/platinsport365.com/css/skin.min.css?20210406102823"/>
    <!--[if lt IE 10]>
    <script src="//cdn.rawgit.com/jpillora/xdomain/0.7.3/dist/xdomain.min.js"></script>
    <script>xdomain.slaves();</script>
    <![endif]-->
    
    <link ng-if="conf.customLanguageCss.indexOf(env.lang) !== -1" rel="stylesheet" ng-href="css/fonts/{{env.lang}}.css"/>

    <link ng-if="conf.customLanguageCss.indexOf(env.lang) !== -1" rel="stylesheet" ng-href="skins/{{conf.skin}}/css/fonts/{{env.lang}}.css"/>
    <!-- /build -->
    <!-- Start Alexa Certify Javascript -->
    <script type="text/javascript">
        _atrk_opts = { atrk_acct:"5Hjzv1Y1Mn20Io", domain:"platinsport365.com",dynamic: true};
        (function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://certify-js.alexametrics.com/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
    </script>
    <noscript><img src="https://certify.alexametrics.com/atrk.gif?account=5Hjzv1Y1Mn20Io" style="display:none" height="1" width="1" alt="" /></noscript>
    <!-- End Alexa Certify Javascript -->
</head>
<body class="{{::conf.site_name.split('.').join('')}}">
    <div class="
        body-wrapper
        {{conf.integrationMode ? 'integration': ''}}
        {{casinoGameOpened ? 'full-screen' : ''}}
        {{env.sliderContent ? 'slider-open' : ''}}
        {{noClassicScroll ? 'no-classic-scroll' : ''}}
        {{$location.path() == '/' ? 'homepage' : ''}}
        {{$location.path().indexOf('customsport') !== -1 ? 'sport' : ''}}
        {{footerMovable ? 'footer-movable' : ''}}
        lang-{{::env.lang}}
        {{$location.path().split('/').join('')}}
        theme-{{theme.id}}
        {{::conf.site_name}}
        {{::domainClass}}
{{(['/poolbetting/', '/freebet/'].indexOf($location.path()) > -1) ? 'modern' : ['/dashboard/', '/livecalendar/', '/results/', '/multiview/', '/overview/', '/virtualsports/', '/insvirtualsports/'].indexOf($location.path()) > -1? 'classic' : conf.sportsLayout}}
        {{env.bodyWrapperClass||''}}
    " no-animate>

        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.7.7/angular.min.js?v=1.7.7"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.7.7/angular-route.min.js?v=1.7.7"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.7.7/angular-animate.min.js?v=1.7.7"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.7.7/angular-cookies.min.js?v=1.7.7"></script>

        <script id="app-config" data-config-url-path="" data-id="" data-config-is-externall=""></script>
        <script src="app.min.js?20210406102823-8dc0df54bc5a0d4ed5b5deb8bbf15ebbd1902315" id="bc-main-js"></script>
        <div class="contain-header tpl-container block-size-visible-b" ng-include="::'templates/header.html'|fixPath" ng-class="{'subheader-enabled': $root.currentPage.hasSubHeader, 'vertical-nav-null': $root.leftMenuOpen === false, 'the-very-top-menu': $root.conf.theVeryTopMenu.length > 0 }"></div>
        <div ng-view ng-class="$location.path().split('/').join('')" class="view-container"></div>
        <div class="footer-group">
            <div class="footer-cell">
                <div class="contain-footer-block"
                     id="footerContainer"
                     ng-hide="!footerMovable && casinoGameOpened > 0"
                     ng-class="{'active': footerOpen && !env.sliderContent, 'footer-fixed': footerMovable}"
                     ng-include="::'templates/footer.html'|fixPath"
                     ng-if="$location.path() !='/popup/'"
                ></div>
                <div class="footer-button theme-{{theme.id}}" ng-click="footerOpen=!footerOpen" ng-class="{'footer-button-open': footerOpen}" ng-hide="conf.footer.disable || !footerMovable || env.sliderContent"></div>
            </div>
        </div>
</div>
    
    
</body>
</html>
