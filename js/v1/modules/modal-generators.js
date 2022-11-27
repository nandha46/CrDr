const generateStudentModal = async (stuId) => {

    const body = new FormData();
    body.append('id', stuId)
    body.append('type', 'student')

    let request = await fetch(baseURL + '/edit/common',{
        method 	: 'POST',
        headers 	: {
            'X-CSRF-TOKEN': _token
        },
        body
        });
    let response = await request.json();

    if (response.success){
        pData = response.jData;
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.modal-title').text(pData.stuFirstName+' '+pData.stuLastName);
    if(pData.id_picture == null){
        
        if(pData.stuGender == 1){
            $('#student_id').attr('src', `${BasURL}storage/uploads/StudentData/Id_cards/default_boy.png`);
        } else {
            $('#student_id').attr('src', `${BasURL}storage/uploads/StudentData/Id_cards/default_girl.png`);
        }
    } else {
        $('#student_id').attr('src', `${BasURL}storage/${pData.id_picture}`);
    }

    let modalBody = $('#modal-footer');
    modalBody.empty();
    let gender = 'Others';
    if (pData.stuGender == 1){
        gender = 'Male';
    } else if (pData.stuGender == 2){
        gender = 'Female';
    }

    modalBody.append(`<table class="container table-bordered table-hover privileges">
    <tbody>
        <tr>
            <td class="p-2"><h4 class="card-title">Academic Year</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.stuclAcademicYear != null?pData.stuclAcademicYear:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Father Name</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.father_name != null?pData.father_name:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Mother Name</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.mother_name != null?pData.mother_name:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Guardian Name (If Any)</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.guardian_name != null?pData.guardian_name:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Secondary Phone</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.condOfficialNumber != null?pData.condOfficialNumber:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Email</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.emlOfficialAddress != null?pData.emlOfficialAddress:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Address</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.address != null?pData.address:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">City</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.city != null?pData.city:'NA'} - ${pData.pincode != null?pData.pincode:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">State</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.statename != null?pData.statename:'NA'}</h4></td>
        </tr>
    </tbody>
  </table>`);

  $('#profileModal').modal('toggle')

}

const generateTeacherModal = async(stfId) => {

    const body = new FormData();
    body.append('id', stfId)
    body.append('type', 'teacher')

    let request = await fetch(baseURL + '/edit/common',{
        method 	: 'POST',
        headers 	: {
            'X-CSRF-TOKEN': _token
        },
        body
        });
    let response = await request.json();

    if (response.success){
        pData = response.jData;
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.modal-title').text(pData.fullName);

    if(pData.id_picture == null){
    console.log('profile data null')        
        if(pData.stffGender == 1){
            $('#staff_id').attr('src', `${BasURL}storage/uploads/StudentData/Id_cards/default_boy.png`);
        } else {
            $('#staff_id').attr('src', `${BasURL}storage/uploads/StudentData/Id_cards/default_girl.png`);
        }
    } else {
    console.log('profile data present')        

        $('#staff_id').attr('src', `${BasURL}storage/${pData.id_picture}`);
    }

    let modalBody = $('#modal-footer');
    modalBody.empty();
    modalBody.append(`<table class="container table-bordered table-hover privileges">
    <tbody>
        <tr>
            <td class="p-2"><h4 class="card-title">Classes Teaching</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.ogcstffClsMasterId ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Subjects Teaching</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.ogcstffSubjectId ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Years of Experience</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.yearsOfExp ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Reporting To</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.reporting_to ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Passing Year</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.passedYears ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Percentage</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.percentages ??'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Degree Class</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.degree_classes ??'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Address</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.address ??'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">City</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.city ??'NA'} - ${pData.pincode ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">State</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.state_name ??'NA'}</h4></td>
        </tr>        
    </tbody>
  </table>`);
}

const generateUserModal = async(userid) => {
    
    const body = new FormData();
    body.append('id', userid)
    body.append('type', 'user')

    let request = await fetch(baseURL + '/edit/common',{
        method 	: 'POST',
        headers 	: {
            'X-CSRF-TOKEN': _token
        },
        body
        });
    let response = await request.json();

    if (response.success){
        pData = response.jData;
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.modal-title').text(pData.firstname+' '+pData.lastname);
    if(pData.id_picture == null){
        
        if(pData.stuGender == 1){
            $('#student_id').attr('src', `${BasURL}storage/uploads/StudentData/Id_cards/default_boy.png`);
        } else {
            $('#student_id').attr('src', `${BasURL}storage/uploads/userData/admin.png`);
        }
    } else {
        $('#student_id').attr('src', `${BasURL}storage/${pData.id_picture}`);
    }

    let modalBody = $('#modal-footer');
    modalBody.empty();

    modalBody.append(`<table class="container table-bordered table-hover privileges">
    <tbody>
        <tr>
            <td class="p-2"><h4 class="card-title">Organization</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.olName != null?pData.olName:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Email</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.emlOfficialAddress != null?pData.emlOfficialAddress:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Secondary Phone</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.condPersonalNumber != null?pData.condOfficialNumber:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Proof Type</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.proof_type != null?pData.proof_type:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Proof Number</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.proof_no != null?pData.proof_no:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Proof Expiry Date</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.proof_expiry != null?pData.proof_expiry:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Address</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.address != null?pData.address:'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">City</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.city != null?pData.city:'NA'} - ${pData.pincode != null?pData.pincode:'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">State</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.statename != null?pData.statename:'NA'}</h4></td>
        </tr>
    </tbody>
  </table>`);
}

const generateEventsModal = async (eventId) => {
    const body = new FormData();
    body.append('id', eventId)
    body.append('type', 'event')

    let request = await fetch(baseURL + '/edit/common',{
        method 	: 'POST',
        headers 	: {
            'X-CSRF-TOKEN': _token
        },
        body
        });

    let response = await request.json();

    if (response.success){
        pData = response.jData;
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.modal-title').text(pData.evntName);
    
    if(pData.event_pic == null){
        $('#event_id').attr('src', `${BasURL}images/programs media/cultural.jfif`);
    } else {
        $('#event_id').attr('src', `${BasURL}images/${pData.event_pic}`);
    }

    let modalBody = $('#modal-footer');
    modalBody.empty();
    modalBody.append(`<table class="container table-bordered table-hover privileges">
    <tbody>
        <tr>
            <td class="p-2"><h4 class="card-title">Chief Guest</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.chiefguest ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Event Place</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.evntPlace ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Sponsored By</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.evntSponseredBy ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Organized By</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.evntOrganisedBy ??'NA'}</h4></td>
        </tr>
        <tr>
            <td class="p-2"><h4 class="card-title">Start time</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.evntStartTime ??'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">End Time</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.evntEndTime ??'NA'}</h4></td>
        </tr>
         <tr>
            <td class="p-2"><h4 class="card-title">Registration From</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.registrationFrom ??'NA'}</h4></td>
        </tr>
    </tbody>
  </table>`);
}

const generateBlogModal = async(blogId) => {
    
    const body = new FormData();
    body.append('id', blogId)
    body.append('type', 'blog')

    let request = await fetch(baseURL + '/edit/common',{
        method 	: 'POST',
        headers 	: {
            'X-CSRF-TOKEN': _token
        },
        body
        });

    let response = await request.json();

    if (response.success){
        pData = response.jData;
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.modal-title').text(pData.title);
    
    if(pData.event_pic == null){
        $('#event_id').attr('src', `${BasURL}images/programs media/blog.jpg`);
    } else {
        $('#event_id').attr('src', `${BasURL}images/${pData.event_pic}`);
    }

    let modalBody = $('#modal-footer');
    modalBody.empty();
    modalBody.append(`<table class="container table-bordered table-hover privileges">
    <tbody>
        <tr>
            <td class="p-2"><h4 class="card-title">Blog Post Message</h4></td>
            <td class="p-2"><h4 class="card-title">${pData.message ??'NA'}</h4></td>
        </tr>
    </tbody>
  </table>`);
}