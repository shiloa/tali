{% load i18n %}
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <title>{% trans "Tali Yarom - Under Construction" %}</title>
        <style type="text/css" media="screen">
            body {
                padding: 0;
                background: white;
              	text-align: center;
              	font-family: Arial, Helvetica, Verdana;
              	background-image: url('/static/images/bg-gray.png');
              	background-position: top;
              	background-repeat: repeat-x;
            }
            #banner, #text {
                width: 310px;
                margin: 4em auto;
            }
            #banner, #one, #two, #bottom {
                display: none;
            }
            
            #text {
              width: 300px;
            }
            
            #one {
              float: left;
            }
            
            #two {
              float: right;
            }
            #text td {
                text-align: center;
                padding: 0;
            }
            
            #bottom {
              font-size: 9pt;
              margin-top: 20em;
            }
            
        </style>
        <script src="/static/js/jquery.min.js" type="text/javascript"></script>
        <script src="/static/js/jquery.ui.min.js" type="text/javascript"></script>
        {# <script src="http://media.frameart.co.il/javascript/jquery.min.js" type="text/javascript"></script> #}
        {# <script src="http://media.frameart.co.il/javascript/jquery.ui.min.js" type="text/javascript"></script> #}
        <script type="text/javascript" charset="utf-8">
            $(window).load(function() {
                setTimeout("$('#banner').fadeIn(1000);", 1000);
                setTimeout("$('#one').fadeIn(1000);", 2000);
                setTimeout("$('#two').fadeIn(1000);", 3000);
                setTimeout("$('#bottom').fadeIn(1000);", 4000);
            });
        </script>
    </head>
    <body id="index">
        <div id="banner">
          {# <img src="http://media.frameart.co.il/images/banner-trans.png" border="none" width="300px"/> #}
          <img src="/static/images/tali-logo.png" border="none"/>
        </div>
        <table id="text" cellpadding="0" cellspacing="0" {% if LANGUAGE_BIDI %}dir="rtl"{% endif %}>
          <tr>
            <td>
              <span id="one" {% if LANGUAGE_BIDI %}style="float: right;"{% endif %}>
                {% trans "The Site is Under Construction..." %}
              </span>
              <span id="two" {% if LANGUAGE_BIDI %}style="float: left;"{% endif %}>
                {% trans "See you soon!" %}
              </span>
            </td>
          </tr>
        </table>
        <div id="bottom" >
          {% blocktrans %}
            5 Iben Gevirol Street, Tel-Aviv, Israel  ||
            Cell: 054-4252657  || 
            Fax: 03-6483516  ||
            email: frameart@gmail.com
          {% endblocktrans %}
        </div>
    </body>
</html>
