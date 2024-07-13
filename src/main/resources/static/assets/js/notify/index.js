(function ($) {
  "use strict";
  var notify = $.notify(
    '<i class="fa fa-bell-o"></i>잠시만 기다려봐..',
    {
      type: "theme",
      allow_dismiss: true,
      delay: 2000,
      showProgressbar: true,
      timer: 300,
      animate: {
        enter: "animated fadeInDown",
        exit: "animated fadeOutUp",
      },
    }
  );

  setTimeout(function () {
    notify.update(
      "message",
      '<i class="fa fa-bell-o"></i>데이터를 불러오고 있습니다...'
    );
  }, 1000);
})(jQuery);
