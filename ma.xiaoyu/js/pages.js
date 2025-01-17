
const HomePage = async() => {


	let {result,error} = await query({
	  type:'recent_dog_locations',
	  params:[sessionStorage.userId]
    });
	console.log(result);

	if(error) throw(error);

	let valid_dogs = result.reduce((r,o)=>{
		o.icon = o.img_color;
		if(o.lat && o.lng) r.push(o);
		// console.log($(o));
		return r;
	},[]);

	let map_el = await makeMap("#home-page .map");
	makeMarkers(map_el,valid_dogs)


	map_el.data("markers").forEach((m,i)=>{
		console.log(m)
		m.addListener("click",function(e){

			console.log(valid_dogs[i])

            // Just Navigate
            //sessionStorage.animalId = valid_dogs[i].dog_id;
			//$.mobile.navigate("#dog-profile-page");

            // Open Google InfoWindow
			map_el.data("infoWindow")
			  .open(map_el.data("map"),m);
			map_el.data("infoWindow")
			  .setContent(makeDogPopupBody(valid_dogs[i]));
		})
	})
}



const DogPage = async() => {
   // destructuring
   let {result:dogs} = await query({
	  type:'animals_by_user_id',
	  params:[sessionStorage.userId]
   })
    
    console.log(dogs)

    makeDogListSet(dogs);
}

const makeDogListSet = (dogs) => {
	$("#dog-page .dog-list").html(makeDogList(dogs));
}



const UserProfilePage = async() => {
	let {result:users} = await query({
	  type:'user_by_id',
	  params:[sessionStorage.userId]
   })
   let [user] = users;

   console.log(user)

   $("#user-profile-page [data-role='main']").html(makeUserProfilePage(user));
   $("#user-profile-page .logo-icon").html(user.name);

}

const UserEditPage = async() => {
	let {result:users} = await query({
	  type:'user_by_id',
	  params:[sessionStorage.userId]
   })
   let [user] = users;

   console.log(user)
   $("#user-profile-edit-form").html(makeUserForm(user,"user-edit"))
   $("#user-profile-edit-page .dog-img").attr("src", user.img)
}

const UserEditPhotoPage = async () => {
	let {result:users} = await query({
	  type:'user_by_id',
	  params:[sessionStorage.userId]
   })
   let [user] = users;

   $("#user-edit-photo-page .imagepicker").css({
      "background-image":`url(${user.img})`
   })
}





const UserPasswordPage = async() => {
	let {result:users} = await query({
		type:'user_by_id',
		params:[sessionStorage.userId]
	})
	let [user] = users;
	console.log(user)

	$('#user-password-form').html(makeUserPasswordForm(user))
	$("#user-password-page .dog-img").attr("src", user.img)
}



const DogProfilePage = async() => {
	let {result:dogs} = await query({
	  type:'dog_by_id',
	  params:[sessionStorage.dogId]
   })
   let [dog] = dogs;
   // console.log(dog);
   $("#dog-profile-page .logo-icon").html(dog.name);
   // $(".dog-profile-decription").html(makeDogProfilePageDescription(dog));
   $("#dog-profile-page [data-role='main']").html(makeDogProfilePage(dog));
}

const DogEditPhotoPage = async () => {
	let {result:dogs} = await query({
	  type:'dog_by_id',
	  params:[sessionStorage.dogId]
   })
   let [dog] = dogs;

   $("#dog-edit-photo-page .imagepicker").css({
      "background-image":`url(${dog.img})`
   })
}

const MostRecentLocations = async() => {
	let {result:locations} = await query({
		type:'most_recent_locations_by_user_id',
		params:[sessionStorage.userId]
	})
	console.log("userid:" + sessionStorage.userId)
	console.log(locations)
}



const DogEditPage = async() => {
	let {result:dogs} = await query({
	  type:'dog_by_id',
	  params:[sessionStorage.dogId]
   })
   let [dog] = dogs;
   $("#dog-profile-edit-form").html(makeDogForm(dog,"dog-edit"))
   $("#dog-profile-edit-page .dog-img").attr("src", dog.img)
}

const DogAddPage = async() => {
	let {result:dogs} = await query({
	  type:'dog_by_id',
	  params:[sessionStorage.dogId]
   })
   let [dog] = dogs;

   $("#dog-profile-add-form").html(makeDogForm({},"dog-add"))
}


const ChooseLocationPage = async () => {
	let map_el = await makeMap("#choose-location-page .map");

	prev_markers = []

	map_el.data("map").addListener("click",function(e){
		clearMarkers(prev_markers)
		console.log(e)
		console.log(e.latLng.lat())
		console.log(e.latLng.lng())
		$("#location-lat").val(e.latLng.lat())
		$("#location-lng").val(e.latLng.lng())
	    prev_markers = makeMarkers(map_el,[e.latLng])
	})
}

const ChooseDogPage = async() => {
   // destructuring
   let {result:dogs} = await query({
	  type:'animals_by_user_id',
	  params:[sessionStorage.userId]
   })
   console.log(dogs)
   $("#choose-dog-page .dog-list").html(makeDogListForAddLocation(dogs));
}














