

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


const makeUserProfilePage = o => `
<div class="home-page-title">${o.name}</div>
            <div class="user-img">User image</div>
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
    name:"personality",
    displayname: "Personality",
    placeholder:"Type words to describe your personality",
    value:user.personality,
})}
`;
}





























