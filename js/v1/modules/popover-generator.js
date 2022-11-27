// -------- start ------------
// Should be inside Document on load

$('[data-bs-toggle="popover"]').popover({
    placement : 'left',
    trigger : 'hover',
    html : true,
    "content" : function(){
        return load_student_popover($(this).parent().attr('data-json'));
    }
});

$('[data-bs-toggle="staff_popover"]').popover({
    placement : 'left',
    trigger : 'hover',
    html : true,
    "content" : function(){
        return load_staff_popover($(this).parent().attr('data-json'));
    }
});

// -------- end ------------

const load_student_popover = jData => {
    let pData = JSON.parse(jData);
    let gender = 'Others';
    if (pData.gender == 1){
        gender = 'Male';
    } else if (gender == 2){
        gender = 'Female';
    }
    if(pData.profile_pic === null || pData.profile_pic == undefined){
        pData.profile_pic = 'uploads/StudentData/Id_cards/default_girl.png';
        if(pData.gender == 1) pData.profile_pic = 'uploads/StudentData/Id_cards/default_boy.png';
    }
    let content = `<div class="">
        <div class="header">
          <h4 class="title">${pData.firstname} ${pData.lastname}</h4>
        </div>
        <div class="card" style="margin: 0%">
            <img class="card-img-top" src="${BasURL}storage/${pData.profile_pic}" alt="Card image" id="student_id" style="width:100%">
          </div>  
  </div>`;
    return content;
}

const load_staff_popover = jData => {
    let pData = JSON.parse(jData);

    if(pData.profile_pic === null || pData.profile_pic == undefined){
        pData.profile_pic = 'uploads/StudentData/Id_cards/default_girl.png';
        if(pData.stffGender == 1) pData.profile_pic = 'uploads/StudentData/Id_cards/default_boy.png';
    }
    let content = `<div class="">
        <div class="header">
          <h4 class="title">${pData.fullName}</h4>
        </div>
        <div class="card" style="margin: 0%">
            <img class="card-img-top" src="${BasURL}storage/${pData.profile_pic}" alt="Card image" id="staff_id" style="width:100%">
          </div>  
  </div>`;
    return content;
}