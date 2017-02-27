 $(function () {

            $("#textareacontainer").resizable({
                minWidth:5,
                maxWidth: 1350,
                maxHeight: 560,
                minHeight: 560,
                resize: function (event, ui) {
                    var $elm = ui.size.width;
                    //var p1 = parseInt($("#textareacontainer").width());
                    var p2 = parseInt($("#iframecontainer").width());
                    var p3 = parseInt($("#container").width());
                    if ($elm == 1270) {
                        ("#iframecontainer").innerHTML = "";
                    }
                    $("#textareacontainer").css({ width: $elm});

                    $("#iframecontainer").css({ width: p3 - $elm  });
                    $(".contentbar2").css({ width: p3 - $elm  });
                    $(".menubar").css({ width: p3 - $elm  });
                    $("#Navt").css({ width: p3 - $elm  });
                    
                }

            }



            );
        });
        $(document).ready(function () {

            $("ul.subnav").parent().append("<span></span>"); //Only shows drop down trigger when js is enabled (Adds empty span tag after ul.subnav*)

            $("ul.topnav li span").click(function () { //When trigger is clicked...

                //Following events are applied to the subnav itself (moving subnav up and down)
                $(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

                $(this).parent().hover(function () {
                }, function () {
                    $(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
                });

                //Following events are applied to the trigger (Hover events for the trigger)
            }).hover(function () {
                $(this).addClass("subhover"); //On hover over, add class "subhover"
            }, function () {	//On Hover Out
                $(this).removeClass("subhover"); //On hover out, remove class "subhover"
            });

        });


        
        function checkOnlyEmailRecovery() {
            window.console.log("In check email recovery")
            var email = document.getElementById('txtEmail');
            var filter = /^([Aa-zA])+([Aa-zA])*.([Aa-zA])+([Aa-zA])*[1-9]*\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email.value)) {
                window.console.log("In check email recovery after filter")
                document.getElementById('error1').innerHTML = "*Please enter a valid email address*";
                email.focus;
                return false;
            }
        }

        function checkEmail() {


            window.console.log("in check e-mail function");
            document.getElementById("myAnchor").addEventListener("click", function (event) {
                event.preventDefault()
            });

            var email = document.getElementById('txtEmail');
            var password = document.getElementById('pwd');

            if (password.style.visibility == 'hidden') {
                window.console.log("I am trying to return false");
                return false;

            }
            /*var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;*/
            var filter = /^([Aa-zA])+([Aa-zA])*.([Aa-zA])+([Aa-zA])*[1-9]*\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email.value)) {
                document.getElementById('errors').innerHTML = "*Please enter a valid email address*";
                email.focus;
                return false;
            }

            else if (email.value.length >= 30) {
                document.getElementById('errors').innerHTML = "email length cannot be greater than 30";

                return false;
            }
            else if (pwd.value.length < 8 || pwd.value.length > 10) {
                document.getElementById('errors').innerHTML = "Enter Password.password should be 8 to 10characters";


                return false;
            }
            else {

                window.location.href = "New.aspx";

            }
        }

        function yesnoCheck() {
            window.console.log("Entering yes no function");
            var ele = document.getElementById('myAnchor').value;
            document.getElementById("ht").style.visibility = 'visible';
            var hey = document.getElementById('txtEmail').value;
            window.console.log("file hidden successfully");

            window.console.log("after ele click");
            if (hey.length == 0 || hey.length > 0) {
                window.console.log(hey.length);

                document.getElementById("ht").disabled = false;
                document.getElementById('ht').style.visibility = 'visible';
                window.console.log("looks like it should be visible now");
                document.getElementById('pwd').style.visibility = 'hidden';
                document.getElementById('cb').style.visibility = 'hidden';
                document.getElementById('btnSave').style.visibility = 'hidden';
                btnSave
                window.console.log("file hidden successfully");
            }

            if (document.getElementById('txtEmail').value.length == 0) {


                document.getElementById('error1').innerHTML = "Enter e-mail address for password recovery and submit";


            }

        }  //document.getElementById('pwd').style.visibility = 'hidden';


        function sendEmail() {
            window.console.log("In send e-mail");
            var ele = document.getElementById('btnSave');
            if (checkOnlyEmailRecovery() == false) {
                checkOnlyEmailRecovery();
            }

            else {
                if (document.getElementById('pwd').style.visibility == 'hidden') {


                    window.console.log("In if email ");

                    //document.getElementById('errors').innerHTML = "";
                    sendNow();

                }
            }
        }
        function sendNow() {
            var ele = document.getElementById('txtEmail').value;
            //   var link = 'mailto:' + ele + '?subject=Message from'
            //+ document.getElementById('txtEmail').value
            //+ '&body=' + document.getElementById('txtEmail').value;
            //   window.location.href = link;
            document.getElementById('error1').innerHTML = "";
            document.getElementById('error4').innerHTML = "email sent sucessfully";

            setTimeout(function () {
                window.location.href = "Default.aspx"; //will redirect to your blog page (an ex: blog.html)
            }, 1000); //will call the function after 2 secs.


        }




       

