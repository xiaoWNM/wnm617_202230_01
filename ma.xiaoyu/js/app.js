
$(() => {
   
   // EVENT DELEGATION
   $(document)



.on("pagecontainerbeforeshow", function(event, ui){
    console.log(ui.toPage[0].id)

    switch(ui.toPage[0].id) {
      case "home-page": HomePage(); break;
      case "dog-page": DogPage(); break;

      case "user-profile-page": UserProfilePage(); break;
      case "user-profile-edit-page": UserEditPage(); break;
      case "user-edit-photo-page": UserEditPhotoPage(); break;


      case "dog-profile-page": DogProfilePage(); break;
      case "dog-edit-photo-page": DogEditPhotoPage(); break;
      case "dog-profile-edit-page": DogEditPage(); break;
      case "dog-profile-add-page": DogAddPage(); break;

      case "user-password-page": UserPasswordPage(); break;

      case "choose-location-page": ChooseLocationPage(); break;

      case "choose-dog-page": ChooseDogPage('js-add-dog-location-dog-selection'); break;
    }
})







   // FORM SUBMISSIONS
   .on("submit", "#signin-form", function(e) {
      e.preventDefault();
      console.log(e)
      checkLoginForm();
   })
   .on("submit", "#signup-form", function(e) {
      e.preventDefault();
      submitUserSignup();
   })
   .on("click", ".js-submit-location-add", function() {
      submitLocationAdd();
   })

   .on("submit","#list-search-form", function(e){
      e.preventDefault();
      let s = $(this).find("input").val();
      checkSearchForm(s);
   })




    // FORM SUBMISSIONS CLICKS
   .on("click", ".js-submit-dog-add", function() {
      submitDogAdd();
   })
   .on("click", ".js-submit-user-password", function() {
      submitUserPassword();
   })
   .on("click", ".js-submit-user-edit", function() {
      submitUserEdit();
   })
   .on("click", ".js-submit-dog-edit", function() {
      submitDogEdit();
   })



   .on("change",".imagepicker input", function(e){
       checkUpload(this.files[0])
       .then(d=>{
          console.log(d)
          let filename = `uploads/${d.result}`;
          $(this).parent().prev().val(filename)
          $(this).parent().css({
             "background-image":`url(${filename})`
          })
       })
   })
   .on("click", ".js-submit-user-upload", function(e){
       let image = $("#user-edit-photo-image").val();
       console.log(image);
       query({
          type:"update_user_image",
          params:[image,sessionStorage.userId]
       }).then(d=>{
          if(d.error) throw(d.error);
          history.go(-1);
       })
   })

   .on("click", ".js-submit-dog-upload", function(e){
       let image = $("#dog-edit-photo-image").val();
       console.log(image);
       query({
          type:"update_dog_image",
          params:[image,sessionStorage.dogId]
       }).then(d=>{
          if(d.error) throw(d.error);
          history.go(-1);
       })
   })




  .on("click", "[data-filter]", function(e) {
     let {filter, value} = $(this).data();
     if(value=="") ListPage();
     else checkFilter(filter,value);
  })




   // CLICKS
   .on("click", ".js-logout", function() {
       sessionStorage.removeItem("userId");
       checkUserId();
   })


   .on("click", ".js-dog-jump", function(e) {
       try {
          e.preventDefault();
          sessionStorage.dogId = $(this).data('id');
          $.mobile.navigate("#dog-profile-page");
       } catch(e) {
           console.log("No id detected")
       }
   })
   .on("click", ".js-add-dog-location-dog-selection", function(e) {
       try {
          e.preventDefault();
          
          $("#location-dog").val($(this).data('id'));
          $.mobile.navigate("#choose-location-page");
       } catch(e) {
           console.log("No id detected")
       }
   })
   .on("click", ".js-dog-delete", function(e) {
      submitDeleteDog();
   })
   .on("click", ".js-location-choose-dog", function(e) {
      $("#location-dog").val(sessionStorage.dogId)
   })



   // ACTIVATE TOOLS
   .on("click", "[data-activate]",function() {
       let target = $(this).data("activate");
       $(target).addClass("active")})

   .on("click", "[data-deactivate]",function() {
       let target = $(this).data("deactivate");
       $(target).removeClass("active")})

    .on("click", "[data-toggle]",function() {
       let target = $(this).data("toggle");
       $(target).toggleClass("active")})

    .on("click", "[data-activateone]",function() {
       let target = $(this).data("activate");
       $(target).addClass("active")
           .siblings().removeClass("active")
   })
   ;

   $("[data-template]").each(function(){
    let target = $(this).data("template");
    $(this).html($(target).html())
   })
});