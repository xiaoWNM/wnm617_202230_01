

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
<div>${o.size}</div>
<div>${o.color}</div>
`;