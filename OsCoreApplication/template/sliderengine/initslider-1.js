jQuery(document).ready(function(){

    var scripts = document.getElementsByTagName("script");

    var jsFolder = "";

    for (var i= 0; i< scripts.length; i++)

    {

        if( scripts[i].src && scripts[i].src.match(/initslider-1\.js/i))

            jsFolder = scripts[i].src.substr(0, scripts[i].src.lastIndexOf("/") + 1);

    }

    jQuery("#amazingslider-1").amazingslider({

        sliderid:1,

        jsfolder:jsFolder,

        width:1188,

        height:485,

        skinsfoldername:"",

        loadimageondemand:false,

        videohidecontrols:false,

        watermarktextcss:"font:12px Arial,Tahoma,Helvetica,sans-serif;color:#333;padding:2px 4px;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;background-color:#fff;opacity:0.9;filter:alpha(opacity=90);",

        watermarkstyle:"text",

        playmutedandinlinewhenautoplay:false,

        donotresize:false,

        enabletouchswipe:true,

        fullscreen:false,

        autoplayvideo:false,

        addmargin:true,

        watermarklinkcss:"text-decoration:none;font:12px Arial,Tahoma,Helvetica,sans-serif;color:#333;",

        watermarktext:"amazingslider.com",

        watermarklink:"http://amazingslider.com?source=watermark",

        transitiononfirstslide:false,

        forceflash:false,

        isresponsive:true,

        forceflashonie11:true,

        forceflashonie10:true,

        pauseonmouseover:false,

        playvideoonclickthumb:true,

        showwatermark:false,

        slideinterval:2000,

        watermarkpositioncss:"display:block;position:absolute;bottom:4px;right:4px;",

        watermarkimage:"",

        fullwidth:true,

        randomplay:false,

        watermarktarget:"_blank",

        scalemode:"fill",

        loop:0,

        autoplay:true,

        navplayvideoimage:"play-32-32-0.png",

        navpreviewheight:60,

        timerheight:2,

        descriptioncssresponsive:"font-size:12px;",

        shownumbering:false,

        navthumbresponsivemode:"samesize",

        skin:"Rotator",

        textautohide:true,

        lightboxshowtwitter:true,

        addgooglefonts:false,

        navshowplaypause:false,

        initsocial:false,

        navshowplayvideo:false,

        navshowplaypausestandalonemarginx:8,

        navshowplaypausestandalonemarginy:8,

        navbuttonradius:2,

        navthumbcolumn:5,

        navthumbnavigationarrowimageheight:32,

        navradius:2,

        navthumbsmallcolumn:3,

        lightboxshownavigation:false,

        showshadow:false,

        navfeaturedarrowimagewidth:16,

        lightboxshowsocial:false,

        navpreviewwidth:120,

        googlefonts:"",

        navborderhighlightcolor:"",

        navcolor:"#e3e3e8",

        lightboxdescriptionbottomcss:"{color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;}",

        lightboxthumbwidth:80,

        navthumbnavigationarrowimagewidth:32,

        navthumbtitlehovercss:"text-decoration:underline;",

        navthumbmediumheight:64,

        texteffectresponsivesize:600,

        arrowwidth:32,

        texteffecteasing:"easeOutCubic",

        texteffect:"slide",

        lightboxthumbheight:60,

        navspacing:4,

        navarrowimage:"navarrows-20-20-0.png",

        ribbonimage:"ribbon_topleft-0.png",

        navwidth:20,

        navheight:20,

        arrowimage:"arrows-32-32-0.png",

        timeropacity:0.6,

        titlecssresponsive:"font-size:12px;",

        navthumbnavigationarrowimage:"carouselarrows-32-32-0.png",

        navshowplaypausestandalone:false,

        texteffect1:"slide",

        navpreviewbordercolor:"#ffffff",

        texteffect2:"slide",

        customcss:"",

        ribbonposition:"topleft",

        navthumbdescriptioncss:"display:block;position:relative;padding:2px 4px;text-align:left;font:normal 12px Arial,Helvetica,sans-serif;color:#333;",

        lightboxtitlebottomcss:"{color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;}",

        arrowstyle:"none",

        navthumbmediumsize:800,

        navthumbtitleheight:20,

        navpreviewarrowheight:8,

        textpositionmargintop:24,

        navshowbuttons:false,

        buttoncssresponsive:"",

        texteffectdelay:800,

        navswitchonmouseover:false,

        playvideoimage:"playvideo-64-64-0.png",

        arrowtop:50,

        textstyle:"dynamic",

        playvideoimageheight:64,

        navfonthighlightcolor:"#ffffff",

        showbackgroundimage:false,

        showpinterest:true,

        navpreviewborder:4,

        navshowplaypausestandaloneheight:28,

        navdirection:"horizontal",

        navbuttonshowbgimage:false,

        navbuttonbgimage:"navbuttonbgimage-28-28-0.png",

        textbgcss:"display:none;",

        playvideoimagewidth:64,

        buttoncss:"display:block; position:relative; margin-top:10px;",

        navborder:4,

        navshowpreviewontouch:false,

        bottomshadowimagewidth:110,

        showtimer:true,

        navmultirows:false,

        navshowpreview:false,

        navmarginy:20,

        navmarginx:20,

        navfeaturedarrowimage:"featuredarrow-16-8-0.png",

        texteffectslidedirection1:"bottom",

        showribbon:false,

        navstyle:"numbering",

        textpositionmarginleft:24,

        descriptioncss:"display:block; position:relative; font:14px \"Lucida Sans Unicode\",\"Lucida Grande\",sans-serif,Arial; color:#e04000;  background-color:#fff; margin-top:10px; padding:10px; ",

        navplaypauseimage:"navplaypause-20-20-0.png",

        backgroundimagetop:-10,

        timercolor:"#ffffff",

        numberingformat:"%NUM/%TOTAL ",

        navthumbmediumwidth:64,

        navfontsize:12,

        navhighlightcolor:"#ff4629",

        texteffectdelay1:1000,

        navimage:"bullet-24-24-0.png",

        texteffectdelay2:1500,

        texteffectduration1:800,

        navshowplaypausestandaloneautohide:false,

        texteffectduration2:800,

        navbuttoncolor:"#e3e3e8",

        navshowarrow:false,

        texteffectslidedirection:"bottom",

        navshowfeaturedarrow:false,

        lightboxbarheight:64,

        showfacebook:true,

        titlecss:"display:table; position:relative; font:16px \"Lucida Sans Unicode\",\"Lucida Grande\",sans-serif,Arial; color:#fff; white-space:nowrap; background-color:#e04000; padding:10px;",

        ribbonimagey:0,

        ribbonimagex:0,

        texteffectresponsive:true,

        navthumbsmallheight:48,

        texteffectslidedistance1:10,

        texteffectslidedistance2:10,

        navrowspacing:8,

        navshowplaypausestandaloneposition:"bottomright",

        lightboxshowpinterest:true,

        lightboxthumbbottommargin:8,

        lightboxthumbtopmargin:12,

        arrowhideonmouseleave:1000,

        navshowplaypausestandalonewidth:28,

        showsocial:false,

        navthumbresponsive:false,

        navfeaturedarrowimageheight:8,

        navopacity:0.8,

        textpositionmarginright:24,

        backgroundimagewidth:120,

        bordercolor:"#ffffff",

        border:0,

        navthumbtitlewidth:120,

        navpreviewposition:"bottom",

        texteffectseparate:true,

        arrowheight:32,

        arrowmargin:8,

        texteffectduration:600,

        bottomshadowimage:"bottomshadow-110-95-4.png",

        lightboxshowfacebook:true,

        lightboxshowdescription:false,

        timerposition:"bottom",

        navfontcolor:"#333333",

        navthumbnavigationstyle:"arrow",

        borderradius:0,

        navbuttonhighlightcolor:"#ff4629",

        textpositionstatic:"bottom",

        texteffecteasing2:"easeOutCubic",

        navthumbstyle:"imageonly",

        texteffecteasing1:"easeOutCubic",

        textcss:"display:block; padding:8px 16px; text-align:left;",

        navthumbsmallwidth:48,

        navbordercolor:"#ffffff",

        navthumbmediumcolumn:4,

        navpreviewarrowimage:"previewarrow-16-8-1.png",

        showbottomshadow:false,

        texteffectslidedistance:10,

        shadowcolor:"#aaaaaa",

        showtwitter:true,

        textpositionmarginstatic:0,

        backgroundimage:"",

        navposition:"topright",

        navthumbsmallsize:480,

        navpreviewarrowwidth:16,

        textformat:"Red box",

        texteffectslidedirection2:"bottom",

        bottomshadowimagetop:95,

        textpositiondynamic:"bottomleft",

        shadowsize:5,

        navthumbtitlecss:"display:block;position:relative;padding:2px 4px;text-align:left;font:bold 14px Arial,Helvetica,sans-serif;color:#333;",

        textpositionmarginbottom:24,

        lightboxshowtitle:true,

        socialmode:"mouseover",

        cssslide: {

            duration:1000,

            easing:"ease",

            checked:true

        },

        transition:"cssslide",

        scalemode:"fill",

        isfullscreen:false,

        textformat: {



        }

    });

});