
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

      case "dog-profile-page": DogProfilePage(); break;
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