

const makeDogList = templater(o=>`
<li class="dog-list-item">
    <a href="#dog-profile-page" class="js-dog-jump" data-id="${o.id}">
        <div class="dog-list-image"><img src="${o.img}" alt=""></div>
        <div class="dog-list-body">
            <div class="dog-list-name">${o.name}</div>
            <div class="dog-list-breed">${o.breed}</div>
            <div class="dog-list-size">${o.size}</div>  
        </div>   
    </a>
</li>
`);

const makeDogListForAddLocation = templater(o=>`    
<li class="dog-list-item">
    <a href="#dog-profile-page" class="js-add-dog-location-dog-selection" data-id="${o.id}">
        <div class="dog-list-image"><img src="${o.img}" alt=""></div>
        <div class="dog-list-body">
            <div class="dog-list-name">${o.name}</div>
            <div class="dog-list-breed">${o.breed}</div>
            <div class="dog-list-size">${o.size}</div>  
        </div>   
    </a>
</li>
`);

const makeDogProfilePage = dog => `
    <div class="profile-head">
        <img src="${dog.img}">
        <a href="#dog-edit-photo-page" class="floater left bottom">
            <img src="img/icons/pencil_icon.png" class="icon">
        </a>
    </div>
    <a class="form-button" href="#dog-profile-edit-page">Edit</a>
    <a class="form-button-icon js-dog-delete noclick-children">
        <img class="form-icon" src="img/icons/delete_icon.jpg">
    </a>
    <ul class="dog-list">
        <li>
            <div class="profile-list-item">
                <div class="profile-list-label">Breed</div>
                <div class="profile-list-value dog-profile-breed-value">${dog.breed}</div>
            </div>
        </li>
        <li>
            <div class="profile-list-item">
                <div class="profile-list-label">Color</div>
                <div class="profile-list-value dog-profile-color-value">${dog.color}</div>
            </div>
        </li>
        <li>
            <div class="profile-list-item">
                <div class="profile-list-label">Size</div>
                <div class="profile-list-value dog-profile-size-value">${dog.size}</div>
            </div>
        </li>
    </ul>
`


const makeUserProfilePage = o => `
<div class="home-page-title">${o.name}</div>

            <div class="profile-head">
                <img src="${o.img}">
                <a href="#user-edit-photo-page" class="floater left bottom">
                    <img src="img/icons/pencil_icon.png" class="icon">
                </a>
            </div>
            <a class="form-button" href="#user-profile-edit-page">Edit</a>
            <ul class="profile-list">
                <li>
                    <div class="profile-list-item">
                        <div class="profile-list-label">Gender</div>
                        <div class="profile-list-value">${o.gender}</div>
                    </div>
                </li>
                <li>
                    <div class="profile-list-item">
                        <div class="profile-list-label">Job</div>
                        <div class="profile-list-value">${o.job}</div>
                    </div>
                </li>
                <li>
                    <div class="profile-list-item">
                        <div class="profile-list-label">Age</div>
                        <div class="profile-list-value">${o.age}</div>
                    </div>
                </li>
            </ul>
`;


const makeDogProfilePageDescription = o => `
<h2>${o.name}</h2>
<div>${o.breed}</div>
<div>${o.color}</div>
<div>${o.size}</div>
`;





const makeDogPopupBody = o => `
<div class="display-flex">
   <div class="animal-list-image"><img src="${o.img}" alt=""></div>
   </div>
       <h2>${o.name}</h2>
       <div>${o.breed}</div>
       <div>${o.color}</div>
       <div>${o.size}</div>
   </div>
</div>
`;

const makeUserPasswordForm = o => `
<div class="form-control">
    <label for="user-username-new" class="form-label">User Name</label>
    <input class="form-input" type="text" id="user-username-new" data-role="none" value="${o.username}">
</div>
<div class="form-control">
    <label for="user-email-new" class="form-label">Email</label>
    <input class="form-input" type="text" id="user-email-new" data-role="none" value="${o.email}">
</div>
<div class="form-control">
    <label for="user-password-new" class="form-label">New Password</label>
    <input class="form-input" type="password" id="user-password-new" data-role="none">
</div>
<div class="form-control">
    <label for="user-password-confirm" class="form-label">Confirm Password</label>
    <input class="form-input" type="password" id="user-password-confirm" data-role="none">
</div>
`;


const FormControlInput = ({namespace,name,displayname,type,placeholder,value=""}) => {
    return `<div class="form-control">  
   <label class="form-label" for="#${namespace}-${name}">${displayname}</label>
   <input data-role="none" class="form-input" type="${type}" id="${namespace}-${name}" placeholder="${placeholder}" value="${value}">
</div>`;
}


const makeDogForm = (dog,namespace = "dog-add") => {
return `
${FormControlInput({
    namespace,
    name:"name",
    displayname: "Name",
    type:"text",
    placeholder:"Type thr dog's name",
    value:dog.name,
})}
${FormControlInput({
    namespace,
    name:"breed",
    displayname: "Breed",
    type:"text",
    placeholder:"Type the breed",
    value:dog.breed,
})}
${FormControlInput({
    namespace,
    name:"color",
    displayname: "Color",
    type:"text",
    placeholder:"Type the color",
    value:dog.color,
})}
${FormControlInput({
    namespace,
    name:"size",
    displayname: "Size",
    placeholder:"Type the size",
    value:dog.size,
})}
`;
}


const makeUserForm = (user,namespace = "user-edit") => {
return `
${FormControlInput({
    namespace,
    name:"name",
    displayname: "Name",
    type:"text",
    placeholder:"Type your name",
    value:user.name,
})}
${FormControlInput({
    namespace,
    name:"gender",
    displayname: "Gender",
    type:"text",
    placeholder:"Type your gender",
    value:user.gender,
})}
${FormControlInput({
    namespace,
    name:"job",
    displayname: "Job",
    type:"text",
    placeholder:"Type your job",
    value:user.job,
})}
${FormControlInput({
    namespace,
    name:"age",
    displayname: "Age",
    placeholder:"Type words to describe your age",
    value:user.age,
})}
`;
}



























