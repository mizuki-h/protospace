$(function(){
  $('.input_img').change(function(){
    if (!this.files.length) {
       return;
     }

    var selectedFile = this.files[0];
    var fileReader = new FileReader();

    fileReader.onload = function(event){
      var loadedImageUri = event.target.result;
      $('.review_img').html('<img src="' + loadedImageUri + '">');
    };

    fileReader.readAsDataURL(selectedFile);
  });
});

$(function(){
  $('.input_sub_img').change(function(){
    if (!this.files.length) {
       return;
     }

    var selectedFile = this.files[0];
    var fileReader = new FileReader();

    fileReader.onload = function(event){
      var loadedImageUri = event.target.result;
      $('.review_sub_img').html('<img src="' + loadedImageUri + '">');
    };

    fileReader.readAsDataURL(selectedFile);
  });
});

$(function(){
  $('.input_sub02_img').change(function(){
    if (!this.files.length) {
       return;
     }

    var selectedFile = this.files[0];
    var fileReader = new FileReader();

    fileReader.onload = function(event){
      var loadedImageUri = event.target.result;
      $('.review_sub02_img').html('<img src="' + loadedImageUri + '">');
    };

    fileReader.readAsDataURL(selectedFile);
  });
});