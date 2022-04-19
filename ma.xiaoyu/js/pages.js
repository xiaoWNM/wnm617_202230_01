
const HomePage = async() => {
}



const DogPage = async() => {
   // destructuring
   let {result:dogs} = await query({
	  type:'animals_by_user_id',
	  params:[sessionStorage.userId]
   })
    
    console.log(dogs)
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

}



const DogProfilePage = async() => {
	let {result:dogs} = await query({
	  type:'dog_by_id',
	  params:[sessionStorage.dogId]
   })
   let [dog] = dogs;
   // console.log(dog);
   
   $(".dog-profile-top").css({"background-image":`url(${dog.img})`});
   $(".dog-profile-page-title").html(dog.name);
   // $(".dog-profile-decription").html(makeDogProfilePageDescription(dog));
   $(".dog-profile-color-value").html(dog.color);
   $(".dog-profile-size-value").html(dog.size);
   $(".dog-profile-breed-value").html(dog.breed);
}

const MostRecentLocations = async() => {
	let {result:locations} = await query({
		type:'most_recent_locations_by_user_id',
		params:[sessionStorage.userId]
	})
	console.log("userid:" + sessionStorage.userId)
	console.log(locations)
}
