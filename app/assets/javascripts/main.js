$(function(){
  $('#star1').on("click",function(e){
    e.preventDefault();
    console.log(this);
  });
});

$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $(".a").change(function(){
    $('#img_prev').removeClass('hidden');
    readURL(this);
  });
});