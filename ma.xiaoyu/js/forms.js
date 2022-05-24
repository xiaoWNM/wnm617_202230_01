


const submitDogAdd = async () => {
	let name = $("#dog-add-name").val();
	let breed = $("#dog-add-breed").val();
	let color = $("#dog-add-color").val();
	let size = $("#dog-add-size").val();
	let image = $("#dog-add-photo-image").val();
    console.log(image);
    console.log({name,breed,color,size});

    if(name!="" && breed!="" && color!="" && size!="") {
       let {id,error} = await query({
    	  type: 'insert_dog',
    	  params: [sessionStorage.userId,name,breed,color,size,image]
       });
       clearDogImagePicker();
       if(error) throw(error);
       sessionStorage.dogId = id;
       history.go(-1);
    } else {
    	throw("Not all data present");
    }
}

const clearDogImagePicker = async() => {
	$("#dog-profile-add-page .img-upload-label").css({
          "display": "block",
      })
      $("#dog-img-picker").css({
          "background-image": "none",
      })
      $("#dog-add-photo-image").val("")
}



const submitDogEdit = async () => {
	let name = $("#dog-edit-name").val();
	let breed = $("#dog-edit-breed").val();
	let color = $("#dog-edit-color").val();
	let size = $("#dog-edit-size").val();

    let {result,error} = await query({
        type: 'update_dog',
    	params: [name,breed,color,size,sessionStorage.dogId]
    });

    if(error) throw(error);

    history.go(-1);
}

const submitDeleteDog = async () => {
    let {result,error} = await query({
        type: 'delete_dog',
    	params: [sessionStorage.dogId]
    });

    if(error) throw(error);
    history.go(-1);
}

const submitUserSignup = async () => {
	let username = $("#signup-username").val();
	let email = $("#signup-email").val();
	let password = $("#signup-password").val();
	let password2 = $("#signup-password-again").val();

	if(password2!=password) {
		throw("Passwords don't match");
	} else if(username!="" && email!="" && password!="") {
       let {id,error} = await query({
    	  type: 'insert_user',
    	  params: [username,email,password]
       });

       if(error) throw(error);

       sessionStorage.userId = id;
       $.mobile.navigate("#home-page");
    } else {
    	throw("Not all data present");
    }
}


const submitUserPassword = async () => {
	let username = $("#user-username-new").val();
	let email = $("#user-email-new").val();
	let password = $("#user-password-new").val();
	let password2 = $("#user-password-confirm").val();

    console. log({username,email,password})

    let {result,error} = await query({
        type: 'update_user',
    	params: [username,email,password,sessionStorage.userId]
    });

    if(error) throw(error);

    history.go(-1);
}



const submitUserEdit = async () => {
	let name = $("#user-edit-name").val();
	let gender = $("#user-edit-gender").val();
	let job = $("#user-edit-job").val();
	let age = $("#user-edit-age").val();

    console. log({name,gender,job,age})

    let {result,error} = await query({
        type: 'update_user_info',
    	params: [name,gender,job,age,sessionStorage.userId]
    });

    if(error) throw(error);

    history.go(-1);
}

const submitLocationAdd = async () => {
	let dog = $("#location-dog").val();
	let lat = $("#location-lat").val();
	let lng = $("#location-lng").val();
	let mood = $("#location-mood").val();

	let {result,error} = await query({
        type: 'insert_location',
    	params: [dog,lat,lng,mood]
    });

    if(error) throw(error);

    history.go(-3);
}




const checkSearchForm = async (s) => {
	let {result:dogs,error} = await query({
		type: 'search_dogs',
		params: [s, sessionStorage.userId]
	});

	if(error) throw(error);

	makeDogListSet(dogs);
}
const checkFilter = async (s) => {
	let {result:dogs,error} = await query({
		type: 'filter_dogs',
		params: [f, v, sessionStorage.userId]
	});

	if(error) throw(error);

	makeDogListSet(dogs);
}















