
$(() => {
   
   // EVENT DELEGATION
   $(document)



.on("pagecontainerbeforeshow", function(event, ui){
    console.log(ui.toPage[0].id)

    switch(ui.toPage[0].id) {
      case "home-page": HomePage(); MostRecentLocations(); break;
      case "dog-page": DogPage(); break;
      case "user-profile-page": UserProfilePage(); break;
      case "dog-profile-page": DogProfilePage(); break;
    }
})







   // FORM SUBMISSIONS
   .on("submit", "#signin-form", function(e) {
      e.preventDefault();
      console.log(e)
      checkLoginForm();

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