// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require theme/universal/jquery.js
//= require theme/style-switcher/jquery-1.js
//= require theme/style-switcher/styleselector.js
//= require theme/mainmenu/ddsmoothmenu.js
//= require theme/mainmenu/selectnav.js
//= require theme/jcarousel/jquery.jcarousel.min.js
//= require theme/revolutionslider/rs-plugin/js/jquery.themepunch.plugins.min.js
//= require theme/revolutionslider/rs-plugin/js/jquery.themepunch.revolution.min.js
//= require theme/mainmenu/scripts.js
//= require theme/accordion/custom.js
//= require theme/sticky-menu/core.js
//= require theme/sticky-menu/modernizr.custom.75180.js
//= require theme/portfolio/source/jquery.fancybox.js
//= require theme/portfolio/source/helpers/jquery.fancybox-media.js
//= require theme/portfolio/jquery.isotope.js
//= require theme/iosslider/_src/jquery.iosslider.js
//= require theme/iosslider/_lib/jquery.easing-1.3.js
//= require theme/iosslider/_src/custom.js


// function appendResult(userText , className, iconClass){
//   var resultHTML = "<div class='stretchLeft result "+ className + "'>" + userText + " <span class='fa fa-" + iconClass + "'></span>" + "</div>";
//   $('body').append(resultHTML);
//   $('.result').delay(10000).fadeOut('1000');
// }


// function register($form) {
//   $.ajax({
//     type: $form.attr('method'),
//     url: $form.attr('action'),
//     data: $form.serialize(),
//     cache       : false,
//     dataType    : 'json',
//     contentType: "application/json; charset=utf-8",
//     error       : function(err) { alert("Could not connect to the registration server. Please try again later."); },
//     success     : function(data) {
//       if (data.result != "success") {
//         appendResult('Wrong Email Or You Are Already Registered, Try Again', 'error', 'exclamation');
//       } else {
//           // It worked, carry on...
//         appendResult('Successful, Check Your Email For Confirmation ', 'success', 'check');
//       }
//     }
//   });
// }

