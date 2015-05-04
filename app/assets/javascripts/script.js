
(function ($) {
  'use strict';

  $.fn.extend({
    caught: function () {
      var element  = this,
          position = element.position().top;
      $(window).scroll(function () {
        if ($(window).scrollTop() > position) {
          element.addClass('fixed');
        } else {
          element.removeClass('fixed');
        }
      });
    }
  });

}(jQuery));
