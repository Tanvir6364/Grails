<%@ page import="com.bitmascot.AuthenticationService" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Bit Mascot Test"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.min.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

    <script type="text/javascript">
        OCB.baseURL = "${UIHelper.appBaseURL()}";
        <g:if test="${flash?.message && flash?.message?.info}">
        jQuery(document).ready(function () {
            OCB.messageBox.showMessage(Boolean(${flash.message?.success}), "${flash.message?.info}");
        });
        </g:if>
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#email').change(function() {
                var email = $(this).val();
                $.ajax({
                    url: "${createLink(controller:'authentication', action:'checkEmailValidity')}",
                    type: "POST",
                    data: {'email': email},
                    cache: false,
                    success: function (msg) {
                        console.log(msg)
                        $('#availableStatus').css("display", "block");
                        if(msg.available) {
                            $('#availableStatus').css("color", "red");
                            $('#availableStatus').html("<b style='font-size: 15px'>Email is already exists</b>");
                        } else {
                            $('#availableStatus').css("color", "green");
                            $('#availableStatus').html("<b style='font-size: 15px'>Email Available</b>");
                        }
                        console.log($('#availableStatus'));
                    },
                    error: function () {
                        alert('Error Occur...');
                    }
                });
            });
        });
    </script>
    <g:layoutHead/>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark rounded">
        <a class="navbar-brand" href="#">Bit Mascot Test</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        %{--Member Action Menu--}%
        <ul class="navbar-nav ml-auto">
            <UIHelper:memberActionMenu/>
        </ul>
    </nav>
</header>


<div class="container-fluid">
    <div class="row">


        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="list-group">
              <UIHelper:leftNavigation/>
            </ul>
        </nav>


        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
            <h1>
            </h1>
            <g:layoutBody/>
        </main>
    </div>
</div>




</body>
</html>
