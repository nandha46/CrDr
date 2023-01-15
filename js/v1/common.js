let _token = $('meta[name="csrf-token"]').attr('content');
let rowCount 	= $('#row-count');
let rowCount2 	= $('#row-count-2');
let table 	= $('.table-datatable');
// let table2 	= $('.table-datatable-2');
let loaderOpt = $('#overlay');
let loaderMsg = $('.loader'), errMsg = $('.msg-to-view');
let inputOnly = $('.input-only');
let allFormSelect = $('.form-select');
const successLog = 'font-size:20px; color: green; font-style: italic; padding: 4px';
const errorLog = 'font-size:20px; color: red; font-style: italic; padding: 4px';
const infoLog = 'font-size:20px; color: blue; font-style: italic; padding: 4px';
const spanActive= '<span class="badge bg-success text-bg-success">Active</span>';
const spanInactive = '<span class="badge bg-danger text-bg-success">In-Active</span>';
const editMsg = 'Cannot Edit In-Active Record';

errMsg.attr('tabindex',1)

loaderOpt.addClass('d-none');
loaderMsg.addClass('d-none');

let add = $('.add');
let remove = $('.remove');

// const BasURL = window.location.origin + '/hopefoundation/';

$(document).ready(function(){
    
    // Bootstrap tooltip
    $('[data-toggle="tooltip"]').tooltip();

    localStorage.clear()
    sessionStorage.clear()
    
    //JQuery UI Tooltip
    
    // $( document ).tooltip({
    //     track: true
    //   });

    // To change prev & next icon to text in pagination

     $(".pagination").addClass("pagination-lg");
     let list = $(".pagination").children("li");
     list.first().children("span").text("Previous");
     list.first().children("a").text("Previous");
     list.last().children("a").text("Next");
     list.last().children("span").text("Next");

     loadEditQuestion();
    
     // Student performance report error toast
     var errElement = document.getElementById('no-student-error')
     if(errElement != null){
        new bootstrap.Toast(errElement).show()
     }
     
    dataTableinit('examreport1',1)
    // dataTableinit('examreport3',1)
    dataTableinit('examreport4',2)
    // dataTableinit('examreport2',2)
    dataTableinitGroup2('examreport2',2,3)

    $('#examreport3').DataTable( {
        order: [[0, 'asc']],
        rowGroup: {
            dataSrc: 1
        },
        columnDefs: [{targets:1, visible:false}],
        // paging: false,
        lengthMenu: [25],
        // pageLength: 25
    } );
  
});

$(function() {

    // $('#datatable-1').DataTable({
    //     ajax: { 
    //        url: `${baseURL}/report/api/get-student-report`,
    //        dataSrc: 'students',
    //        deferRender: true
    //     },
    //     columns: [
    //         { data: '' },
    //         { data: 'stuFirstName' },
    //         { data: 'Standard' },
    //         { data: 'sec' },
    //         { data: 'gend' },
    //         { data: 'academi' },
    //         { data: 'test p' },
    //         { data: 'org' },
    //         { data: 'mob' },
    //         { data: 'stat' },
    //     ],
    // });

    $('.date-input').datepicker({
        dateFormat : 'dd-mm-yy',
        maxDate: new Date(),
        yearRange: "-100:+0",
        changeMonth: true,
        changeYear: true,
    });

    $( "#date-of-birth" ).datepicker( "option", "maxDate", new Date(2019, 3) );

   $(".chosen-select").chosen({width:"90%",disable_search_threshold: 10,inherit_select_classes:true});
   
   $(".chosen-class-select").chosen({disable_search_threshold: 10, inherit_select_classes:true, max_selected_options: 3});

   $('#to_emails').multiple_emails();
   $('#cc_emails').multiple_emails();
   $('#bcc_emails').multiple_emails();


    errMsg.addClass('d-none')

    $('.btn.btn-primary.cancel').click(function(e) {
        hideShowFormEditState(true, false)
    });
    
    $('.feather-award').mouseenter(function(e) {
        $(this).attr('fill','palegreen')
    });
    $('.feather-award').mouseleave(function(e) {
        $(this).attr('fill','white')
    });
    
    $('.mi-btn-secondary').click(function(e) {
        hideShowFormEditState(true, false)
    });

    $('.numbers-only').on('keypress keyup blur', function(event) {

        $(this).val($(this).val().replace(/[^\d].+/, ''));
        if ((event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });
    
    $('.years-only').on('keypress keyup blur', function(event) {

        $(this).val($(this).val().replace(/[^\d].+/, ''));
        if ((event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });

    $('.decimal-numbers').on('keypress keyup blur', function(event) {

        $(this).val($(this).val().replace(/[^0-9\.]/g, ''));
        if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });

    $('.btn-add-edit').click(function(e) {

        let hasClass = $('.form-add-edit').hasClass('d-none');

        hideShowFormEditState(true, false);

        if (hasClass) hideShowFormEditState(false, false);
    });

});

const hideShowFormEditState = (isHide, changeText) => {

    let text = $('.btn-add-edit span').html();
    $('msg-to-view').addClass('d-none');

    if(isHide){
        $('.form-add-edit').fadeOut('slow').addClass('d-none');
        text = text.replace('Edit', 'Add');
        $('.enable-plus').removeClass('d-none');
        $('.enable-minus').addClass('d-none');
        $('.form-select').val('');
        $('.form-select').val('').trigger('chosen:updated');
        $('.form-select.country').val('india');
        $('.form-select.state-details').val(24);
        $('.form-select.stu-section').val(1);
        $('.input-only').val('');
        $('.numbers-only').val('');
        $('.years-only').val('');
        $('.decimal-numbers').val('');
        $('.form-checkbox-input').prop('checked', false);
        $(".chosen-select").val('').trigger("chosen:updated");
        for (let i = 0; i< 10; i++){
            deleteDegreeInputs();
        }
        $('.button-add-edit').html('Add')
    }else{
        $('.form-add-edit').fadeIn('slow').removeClass('d-none');
        $('.enable-plus').addClass('d-none');
        $('.enable-minus').removeClass('d-none');

        if(changeText){
            text = text.replace('Add', 'Edit');
            $('.button-add-edit').html('Update')
        } 
    }
    
    $('.text-update-add-edit').html(text);
    $('html, body').animate({
        scrollTop: $('.form-add-edit').offset().top
    }, 1);
     
}

const checkDupliacte = async e => {
    let fname = $(e).val();
    
    if(fname != ''){
        let body = new FormData();
        body.append('fname', fname);
       
    try {
        let request = await fetch(`${baseURL}/check-duplicate`, {
        method : 'POST',
        headers : {
            'X-CSRF-TOKEN' : _token
        },
        body
       });
       let response = await request.json();

       if (response.status) {
            let students = response.students;
            let listTag = $('#test-list');

                if(listTag.length == 0){
                    console.log(listTag.length)
                    return;
                } 

                listTag.empty();
            students.forEach( student => {
                let listHtml = `<div class="card mb-3">
                <div class="card-body">
                  <div class="d-flex flex-column flex-lg-row">
                    <span class="avatar avatar-text rounded-3 bg-info me-4 mb-2">${student.clssName} ${student.secnName}</span>
                    <div class="row flex-fill">
                      <div class="col-sm-5">
                        <h4 class="h5">${student.firstname} ${student.lastname}</h4>
                        <span class="badge bg-secondary">UID: ${student.student_userid}</span> 
                        <span class="badge bg-success">${student.dob}</span>
                      </div>
                      <div class="col-sm-4 py-2">
                        <span class="badge bg-secondary">${student.OfficialNumber}</span>
                        <span class="badge bg-secondary">${student.address}</span>
                        <span class="badge bg-success">${student.academicYear}</span>
                      </div>
                      <div class="col-sm-3 text-lg-end">
                        <a class="btn btn-primary">${student.studentstatus}</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>`;
                listTag.append(listHtml);
            });
            $('#studentListModal').modal('toggle');
       } else {
            console.log('No students present with that name.')
       }

    } catch(err) {
        console.error(err);
     }
    }
}

const loaderDisable = () => {
    loaderOpt.addClass('d-none');
    loaderMsg.html('').addClass('d-none');
}

const inputValidator = (input, name) => {
    if (input.val() == null || input.val() == '') {
        input.addClass('err-input-admin'); 
        input.focus();
        throw `${name} is Required`;
    }
}

const showUpdateToast = (message) => {
    $('#alert-icon').addClass('d-none')
    $('#check-icon').removeClass('d-none')
    $('#updateToastText').html(message);
    new bootstrap.Toast(document.querySelector('#updateToast')).show();
}

const showErrorToast = (message) => {
    $('#check-icon').addClass('d-none')
    $('#alert-icon').removeClass('d-none')
    $('#updateToastText').html(message);
    new bootstrap.Toast(document.querySelector('#updateToast')).show();
}

const dataTableinit = (id, groupCol) => {

    $(`#${id}`).DataTable( {
        order: [[0, 'asc']],
        rowGroup: {
            dataSrc: groupCol
        },
        columnDefs: [{targets:groupCol, visible:false}],
        paging: false,
        searching: false,
        info: false
    } );

}

const dataTableinitGroup2 = (id, groupCol, groupCol2) => {

    $(`#${id}`).DataTable( {
        order: [[0, 'asc']],
        rowGroup: {
            dataSrc: [groupCol, groupCol2]
        },
        columnDefs: [{targets:[groupCol, groupCol2], visible:false}],
        paging: false,
        searching: false,
        info: false
    } );

}

const phoneValidation = validPhone =>{
    let regex = /^[6-9]\d{9}$/ ;
    return regex.test(validPhone) 
}
const emailValidation = validEmail => {
    let regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(validEmail)
}

const changeUserType = () =>  {

    let userType = $('#user-type').val();

    $('.prvl-menu').addClass('d-none')

    if(userType == '4' || userType == '5' || userType == '6') $('.prvl-menu').removeClass('d-none');
}

const changeStatus = async (type, id, rowId) => {

    console.log('rowid:', rowId)

    if(!confirm('Do you want to change status?')) return false;
    
    try{

        const body = new FormData();

        body.append('id', id);
        body.append('type', type);

        let request = await fetch(`${baseURL}/status`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();
        let Status = '';

        if(response.Status){
            if(response.StatusVl == '1'){
                Status = '<span class="badge bg-success text-bg-success">Active</span>';
                $(`.table-datatable tr#${rowId}`).find('td:contains("In-Active")').html(Status);
                $('#toastBody').html('Status changed to True');
                new bootstrap.Toast(document.querySelector('#successToast')).show();
            }
            if(response.StatusVl == '0'){
                Status = '<span class="badge bg-danger text-bg-success">In-Active</span>';
                $(`.table-datatable tr#${rowId}`).find('td:contains("Active")').html(Status);
                $('#toastBody').html('Status changed to False');
                $('#successToast').removeClass('bg-success');
                $('#successToast').addClass('bg-danger');
                new bootstrap.Toast(document.querySelector('#successToast')).show();
            }
           
        }else{
            alert('Something went wrong');
        }

    }catch(err){
        throw err;
    }
}

const AddUpdateUsers = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val(), userType = $('#user-type');

    let firstName = $('#firstname'), lastName = $('#lastname'), pMobile = $('#p-mobile'), sMobile = $('#s-mobile'), 
                        email = $('#email'), address = $('#address'), dateOfHiring = $('#date-of-hiring'), organization = $('#organization'),
                            city = $('#city'), state = $('#state'), country = $('#country'), pincode = $('#pincode'), 
                                dateOfBirth = $('#date-of-birth'), yrOfExp = $('#yr-of-exp'), proofType = $('#proof-type'), 
                                    proofNo = $('#proof-no'), expiryDate = $('#expiry-date'), password = $('#password');

    let privilegesAdd = [], privilegesView = [];

    $.each($('input[name=menu_add]:checked'), function(){
        privilegesAdd.push($(this).val())
    });

    $.each($('input[name=menu_view]:checked'), function(){
        privilegesView.push($(this).val())
    });

    let prvlAdd = null, prvlView = null; 

    if(privilegesAdd.length > 0) prvlAdd = JSON.stringify(privilegesAdd);
    if(privilegesView.length > 0) prvlView = JSON.stringify(privilegesView);

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');
    allFormSelect.removeClass('err-input-admin');

    if(organization.val() == null){
        organization.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Organization is required');
        return false;
    }

    if(userType.val() == null){	
        userType.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the UserType'); 
        return false;
	}else{
        if(userType.val() >= 4 && editId == null){
            if( prvlAdd === null && prvlView === null){
                errMsg.removeClass('d-none').html('Fill the Dashboard'); 
                return false;
            }
        }
        
    }
    if(userType.val() == 3){

        if(yrOfExp.val() == ''){
            yrOfExp.addClass('err-input-admin'); 
            errMsg.html('Enter Experience details').removeClass('d-none');
            yrOfExp.focus();
            return false;
        }
    }
    
    if(firstName.val() == ''){	
        firstName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' FirstName is required'); 
        firstName.focus();
        return false;
	}
    if(lastName.val() == ''){
        lastName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('LastName is required');
        lastName.focus();
        return false;
    }
    if(pMobile.val() == '' || pMobile.val().length>10 || pMobile.val().length<10 ){
        pMobile.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('10 digit MobileNo required');
        pMobile.focus();
        return false;
    }else{
        if(!phoneValidation(pMobile.val())){
            pMobile.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild MobileNo is required');
            pMobile.focus();
            return false;
        }
    }
    if(email.val() == ''){
        email.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Email is required');
        email.focus();
        return false;
    }else{
        if(!emailValidation(email.val())){
            email.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild Email is required');
            email.focus();
            return false;
        }
    }
    if(address.val() == ''){
        address.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Address is required');
        address.focus();
        return false;
    }
    if(city.val() == ''){
        city.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('City is required');
        city.focus();
        return false;
    }
    
    if(state.val() == null){
        state.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' State is required');
        return false;
    }
    if(pincode.val() == ''){
        pincode.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Pincode is required');
        pincode.focus();
        return false;
    }

    if(dateOfBirth.val() == ''){
        dateOfBirth.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date of Birth is required');
        dateOfBirth.focus();
        return false;
    }
    // if(editId == '' && password.val() == ''){
    //     password.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Password is required');
    //     password.focus();
    //     return false;
    // }

    if(proofType.val() == ''){
        proofType.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Proof type is required');
        proofType.focus();
        return false;
    }
    if(proofNo.val() == ''){
        proofNo.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Proof Number is required');
        proofNo.focus();
        return false;
    }
    // if(expiryDate.val() == ''){
    //     expiryDate.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Expiry Date is required');
    //     expiryDate.focus();
    //     return false;
    // }

    const body = new FormData();

    let fileValidate = filesValidate();

    if(!fileValidate){
        errMsg.html('Provide valid file').removeClass('d-none');
        return false;
    }else{
        if(fileValidate.length > 0){
            let i = 0;   
            for(let file of fileValidate){
                body.append(`files_${i}`, file);
                i++;
            }
            body.append('totalFiles', i);
        } 
    }

    let details = {
        organization : organization.val(),
        userType : userType.val(),
        firstName : firstName.val(),
        lastName : lastName.val(),
        pMobile : pMobile.val(),
        sMobile : sMobile.val(),
        email : email.val(),
        gender : $('input[name=gender]:checked').val(),
        address : address.val(),
        city : city.val(),
        state : state.val(),
        country : country.val(),
        pincode : pincode.val(),
        dateOfBirth : dateOfBirth.val(),
        dateOfHiring :dateOfHiring.val(),
        yrOfExp : yrOfExp.val(),
        proofType : proofType.val(),
        proofNo : proofNo.val(),
        expiryDate : expiryDate.val(),
        password : password.val(),
        editId,
        prvlAdd,
        prvlView
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{
        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/users/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let change = '<span class="badge badge-bg text-bg-success">New</span>';

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }

            let gendername = 'Others';
            
            if (results.gender == 1){
                gendername = 'Male';
                
            } else if (results.gender == 2){
                gendername = 'Female';
            }

           let usertypes = ['','SuperAdmin', 'Admin', 'Children', 'Staff', 'Manager', 'Others'];

            let usertypeName = 'Admin';

            // eagage

            let inUpAry = [
                incCount,
                `${results.firstname} ${results.lastname} ${change}`,
                gendername,
                `${results.dob}`,
                results.years_of_exp,
                results.condOfficialNumber,
                results.date_of_hiring,
                results.username,
                usertypes[results.usertype],
                results.status ? spanActive:spanInactive,
                `<i color="blue" id='column-td-${incCount}' onclick = 'editUser(${results.userid}, ${incCount})' data-feather='edit' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('users', '${results.userid}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                <i data-bs-toggle="modal" onclick="generateUserModal(${results.userid})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }
            $(`.table-datatable tr#${rowId} td:nth(10)`).attr(attrBute)
            $(`.table-datatable tr#${rowId} td:nth(9)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();
            showUpdateToast(response.Msg);

        }else{
            if(response.Msg != undefined){
                alert(response.Msg);
            } else {
                alert('Something went wrong');
            }
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editUser = async (userid, getId) => {

    let userType = [
        { id :  2, name : 'ADMIN'},
        { id :  4, name : 'STAFF'},
        { id :  6, name : 'OTHERS'},
    ];   

    $('.current-row').val(getId)
      
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
        console.log(pData)
    } else {
        alert('Some error in Edit AJAX')
    }

    let gender = 3;
    
    if(pData.gender === 'MALE') gender = 1;
    if(pData.gender === 'FEMALE') gender = 2;

    $(`input[name=gender][value=${gender}]`).prop('checked', true);

    $('#organization').val(pData.userOrgId);
    $('#user-type').val(pData.usertype);
    $('#firstname').val(pData.firstname);
    $('#lastname').val(pData.lastname);
    $('#p-mobile').val(pData.condOfficialNumber);
    $('#s-mobile').val(pData.condPersonalNumber);
    $('#email').val(pData.emlOfficialAddress == 'null'? '' : pData.emlOfficialAddress);
    $('#address').val(pData.address == 'null' || city == undefined ? '' : pData.address);
    $('#city').val(pData.city == 'null' || pData.city == undefined ? '' : pData.city);
    $('#state').val(pData.state).attr('selected','selected');
    // $('#country').val(country).attr('selected','selected');
    $('#pincode').val(pData.pincode == 'null' || pData.pincode == undefined ? '' : pData.pincode);
    $('#date-of-birth').val(pData.dob == 'null' || pData.dob == '0000-00-00'? '' : pData.dob);
    $('#date-of-hiring').val(pData.date_of_hiring == 'null' || pData.date_of_hiring == '0000-00-00'? '' : pData.date_of_hiring);
    $('#yr-of-exp').val(pData.years_of_exp == 'null' || pData.years_of_exp == null? '' : pData.years_of_exp);
    $('#proof-type').val(pData.proof_type);
    $('#proof-no').val(pData.proof_no);
    $('#expiry-date').val(pData.proof_expiry);
    $('#_id').val(pData.userid);

    if(pData.usertyperesult != 'DRIVER' || pData.usertyperesult != 'ADMIN'){

        let privilges = pData.privilges;

        if(privilges !== 'null' && privilges !== undefined && privilges !== null){

            let sepPrvl = privilges.split(','), splitDMenu = []

            for(let prvl of sepPrvl){
                
                let sepPprvl = prvl.split('/');

                let addPrvl = 'false', fullPrvl= 'false', viewPrvl = 'false', mainId, id, valueAdd, valueView, valueFull;
                
                if(sepPprvl[1] == 'ET=1') addPrvl += '-add';
                if(sepPprvl[2] == 'VW=1') viewPrvl += '-edit';
                if(sepPprvl[1] == 'ET=1' && sepPprvl[2] == 'VW=1') fullPrvl += '-view';

                mainId = sepPprvl[8].split('=')[1];
                id = sepPprvl[9].split('=')[1];

                valueAdd = `${id}-${mainId}-${addPrvl}`;
                valueView = `${id}-${mainId}-${viewPrvl}`;
                valueFull = `${id}-${mainId}-${fullPrvl}`;
                
                if(valueAdd.includes('-add')) splitDMenu.push(valueAdd);
                if(valueView.includes('-edit')) splitDMenu.push(valueView);
                if(valueFull.includes('-view')) splitDMenu.push(valueFull); 
            }

            for(let fnlSplit of splitDMenu){
                $(`input[name=menu_add][value=${fnlSplit}]`).prop('checked', true);
                $(`input[name=menu_view][value=${fnlSplit}]`).prop('checked', true);
                $(`input[name=menu_full][value=${fnlSplit}]`).prop('checked', true);
            } 
        }
    }

    for(let sepUType of userType){
        
        if(sepUType.name == pData.usertyperesult) $('#user-type').val(sepUType.id).attr('selected', 'selected');
    }

    hideShowFormEditState(false, true);   
}   

const updatePrivileges = e => {

    let currentParent = $(e).parent().attr('id');

    let isChecked = $(`#${currentParent} input[name=menu_full]`).prop('checked');

    $(`#${currentParent} input[name=menu_add]`).prop('checked', false);
    $(`#${currentParent} input[name=menu_view]`).prop('checked', false);

    if(isChecked){

        $(`#${currentParent} input[name=menu_add]`).prop('checked', true);
        $(`#${currentParent} input[name=menu_view]`).prop('checked', true);
    }  
}

const updateAddEditPrivileges = e => {

    let currentParent = $(e).parent().attr('id');

    let isChecked = $(`#${currentParent} input[name=menu_add]`).prop('checked') && $(`#${currentParent} input[name=menu_view]`).prop('checked');

    $(`#${currentParent} input[name=menu_full]`).prop('checked', true);

    if(!isChecked) $(`#${currentParent} input[name=menu_full]`).prop('checked', false);
}

const filesValidate = () => {

    let control = document.getElementById('file'), form = [];

    if(control.files.length > 0){

        for(let file of control.files){

            if(file.type === 'image/png' || file.type === 'image/jpeg' || file.type === 'image/jpg' || file.type === 'application/pdf'){
                let size = (file.size/1024) / 1024;
                if(size > 10){
                    return false;
                }

                form.push(file);
            }else{
                return false;
            }
        }
        return form;
    }

    return true;
}
const AddUpdateStudents = async() => {
    
    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let firstName = $("#firstname"),
        lastName = $("#lastname"),
        dateOfBirth = $("#date-of-birth"),
        fathername = $("#fathername"),
        mothername = $("#mothername"),
        guardianname = $("#guardianname"),
        pMobile = $("#p-mobile"),
        sMobile = $("#s-mobile"),
        email = $("#email"),
        address = $("#address"),
        city = $("#city"),
        state = $("#state"),
        pincode = $("#pincode"),
        organization = $("#organization"),
        standard = $("#standard"),
        section = $("#section"),
        academicYear = $("#academicYear"),
        password = $("#password");
    let proofType = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');
    allFormSelect.removeClass('err-input-admin');

    if(firstName.val() == ''){	
        firstName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Firstname is required');
        firstName.focus();
        return false;
	}
    if(lastName.val() == ''){
        lastName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('LastName is required');
        lastName.focus();
        return false;
    }
    if(dateOfBirth.val() == ''){
        dateOfBirth.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date of Birth is required');
        dateOfBirth.focus();
        return false;
    }
    if(document.getElementById('parents').checked == true){
        if(fathername.val() == ''){
            fathername.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Father Name is required');
            fathername.focus();
            return false;
    }
        if(mothername.val() == ''){
            mothername.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Mother Name is required');
            mothername.focus();
            return false;
    }
    }
    if(document.getElementById('guardian').checked == true){
        if(guardianname.val() == ''){
        guardianname.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Guardian Name is required');
        guardianname.focus();
        return false;
        }
    }
    if(pMobile.val() == ''|| pMobile.val().length>10 || pMobile.val().length<10){
        pMobile.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('10 digit MobileNo required');
        pMobile.focus();
        return false;
    }else{
        if(!phoneValidation(pMobile.val())){
            pMobile.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild MobileNo is required');
            pMobile.focus();
            return false;
        }
    }
    if(email.val() == ''){
        // email.addClass('err-input-admin'); 
        // errMsg.removeClass('d-none').html('Email is required');
        // email.focus();
        // return false;
    }else{
        if(!emailValidation(email.val())){
            email.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild Email is required');
            email.focus();
            return false;
        }
    }
    if(address.val() == ''){
        address.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Address is required');
        address.focus();
        return false;
    }
    if(city.val() == ''){
        city.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('City is required');
        city.focus();
        return false;
    }
    if(pincode.val() == ''){
        pincode.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Pincode is required');
        pincode.focus();
        return false;
    }
    if(state.val() == null){
        state.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('State is required');
        return false;
    }    
    if(organization.val() == null){
        organization.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Organization is required');
        return false;
    }
    if(standard.val() == null){
        standard.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Standard is required');
        return false;
    }
    if(section.val() == null){
        section.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Section is required');
        return false;
    } 
    if(academicYear.val() == ''){
        academicYear.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Academic Year is required');
        academicYear.focus();
        return false;
    }
    if(editId == '' && password.val() == ''){
        password.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Password is required');
        password.focus();
        return false;
    }

    const body = new FormData();

    let fileValidate = filesValidate();

    if(!fileValidate){
        errMsg.html('File size Must be below 10MB and Filetype should be jpg').removeClass('d-none');
        return false;
    }else{

        if(fileValidate.length > 0){
            let i = 0;   
            for(let file of fileValidate){
                body.append(`files_${i}`, file);
                i++;
            }
            body.append('totalFiles', i);
        } 
    }

    let details = {
        firstName : firstName.val(),
        lastName : lastName.val(),
        gender : $('input[name=gender]:checked').val(),
        dateOfBirth: dateOfBirth.val(),
        parent_guardian : $('input[name=parent_guardian]:checked').val(),
        fathername : fathername.val(),
        mothername : mothername.val(),
        guardianname : guardianname.val(),
        pMobile : pMobile.val(),
        sMobile : sMobile.val(),
        email : email.val(),
        address : address.val(),
        city : city.val(),
        state : state.val(),
        pincode : pincode.val(),
        organization : organization.val(),
        standard : standard.val(),
        section : section.val(),
        academicYear : academicYear.val(),
        password : password.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/students/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let change = '<span class="badge badge-bg text-bg-success">New</span>';

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                    incCount = $('.current-row').val();
                    change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
                }
            let gender = results.stuGender;
            if(gender == 1){
                gender = 'Male';
            } else if(gender == 2){
                gender = 'Female';
            } else {
                gender = 'Other';
            }
            let stat = '<span class="badge bg-success text-bg-success">Active</span>';
            let color = 'blue';
            let edit = 'Edit';
            if(results.stuIsStatus == 0){
                color = 'grey';
                edit = editMsg;
                stat = '<span class="badge bg-danger text-bg-success">In-Active</span>';
            }
            let inUpAry = [
                incCount,
                `${results.stuFirstName}  ${results.stuLastName} ${change}`,
                `${results.clssName} - ${results.secnSecName}`,
                 gender,
                 results.stuId,
                 results.date_of_birth,
                 results.condOfficialNumber,
                 results.username,
                 stat,                
                `<i color="${color}" data-feather='edit' title='${edit}' class='menu-icon-form-td-i cursor-pointer' id='column-td-${incCount}' onclick='editStudent(${results.stuId},${incCount})'></i>
                <i color="red" onclick = "return changeStatus('students', '${results.stuId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                <i data-bs-toggle="modal" onclick="generateStudentModal(${results.stuId})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            // console.log({attrBute, rowId})
            $(`tr#${rowId} td:nth(9)`).attr('data-json', JSON.stringify(results))
            $(`tr#${rowId} td:nth(8)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();
            showUpdateToast(response.Msg);

        }else{
            alert('Something went wrong in the Backend');
            loaderDisable();
        }
    }catch(err){
        console.log(err)
        alert('Something went wrong');
        throw err;
    }
    return false;
}

const editStudent = async (stuId, getId) => {

   let status = $(`.table-datatable tr#row-${getId}`).find('td:contains("In-Active")');

   if(status.length == 1) {
    showErrorToast('Cannot Edit In-Active Record.')
    return false;
   }

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
        console.log(pData)
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.current-row').val(getId)
      
    $('#firstname').val(pData.stuFirstName);
    $('#lastname').val(pData.stuLastName);

    $('#fathername').val(pData.father_name);
    $('#mothername').val(pData.mother_name);    
    $('#guardianname').val(pData.guardian_name);

    $('#date-of-birth').val(pData.stuDOB == 'null' || pData.stuDOB == '0000-00-00'? '' : pData.stuDOB);
    $(`input[name=gender][value=${pData.stuGender}]`).prop('checked', true);
    

    $('#p-mobile').val(pData.condOfficialNumber == 'null'? '' : pData.condOfficialNumber);
    $('#s-mobile').val(pData.condPersonalNumber == 'null'? '' : pData.condPersonalNumber);

    $('#email').val(pData.emlOfficialAddress == 'null'? '' : pData.emlOfficialAddress);

    $('#address').val(pData.address == undefined ? '' : pData.address);
    $('#city').val(pData.city == 'null' || pData.city == undefined ? '' : pData.city);
    $('#state').val(pData.state).attr('selected','selected');
    $('#pincode').val(pData.pincode == 'null' || pData.pincode == undefined ? '' : pData.pincode);

    $("#organization").val(pData.olId).attr('selected','selected');
    $("#standard").val(pData.clssId).attr('selected','selected');
    $("#section").val(pData.secnId).attr('selected','selected');
    $("#academicYear").val(pData.stuclAcademicYear).attr('selected','selected');

    $('#_id').val(pData.stuId);

    hideShowFormEditState(false, true);   
}

const promoteAll = (e) => {
    
    let status = $(e).attr('data-status');
    if(status == 1){
            $('input[name="stu_promo"]').prop('checked', false);
            $(e).attr('data-status', 0)
        } else {
            $('input[name="stu_promo"]').prop('checked', true);
            $(e).attr('data-status', 1)
        }
}

const transferAll = (e) => {
    
    let status = $(e).attr('data-status');
    if(status == 1){
            $('input[name="stu_transfer"]').prop('checked', false);
            $(e).attr('data-status', 0)
        } else {
            $('input[name="stu_transfer"]').prop('checked', true);
            $(e).attr('data-status', 1)
        }
}

const changeStandard = () => {
     $('#section').prop('selectedIndex', 0);
     $('.mi-table-space').addClass('d-none')
     $('.mi-btn-holder').addClass('d-none')
        $('.stuListTable').DataTable().rows(':not(#first-dt-row)').remove().draw().destroy();
}

const showStudentList = () => {
   let standardid = $('#standard').val();
   let sectionid = $('#section').val();

//    errMsg.addClass('d-none')

   $.ajax({
   url 	: baseURL + '/promote-students/api',
   type 	: 'POST',
   dataType: 'json',
   data 	: {
       _token : _token,
       standardid: standardid,
       sectionid:sectionid
   },
   encode 	: !0

   }).done( t => {

    if(t.success){

        let newtable = $('.stuListTable').dataTable({searching: false, paging: false, info: false, bSort: false});
        
        if (t.students.length == 0) {
            // errMsg.removeClass('d-none').html("No student in the selected class")
            $('#promoteModal').modal('toggle')
            $('.stuListTable').DataTable().destroy();
            return;
        }
        $('.mi-btn-holder').removeClass('d-none')
        $('.mi-table-space').removeClass('d-none')
        t.students.forEach( student => {
            newtable.fnAddData([
                `${student.firstname} ${student.lastname==null?'':student.lastname}`,
                `${student.clssName}-${student.secnName}`,
                `<input class='form-check-input' type='checkbox' name='stu_promo' id='inline-view' value='${student.id}' />`,
                `<input class='form-check-input' type='checkbox' name='stu_transfer' id='inline-full' value='${student.id}' />`
            ], true);
        });
        $('.stuListTable').DataTable().destroy();
    }

   }).fail( t => {
    if(t.status == '401' || t.status == '419'){
        window.location.href = window.location.href;
    }
   })

}

const AddUpdatePromotion = () => {
    try {

        let academicYear = $('#academicYear').val();
        let to_standard = $('#to_standard').val();

        if(to_standard == null) {
            $('#errorModal').modal('toggle')
            return;
        }

        let promotionList = [];
        let failList = [];
        let transferList = [];

        $('input[name="stu_promo"]:checked').each( (index, s) => {
            promotionList.push(s.value)
        });
        $('input[name="stu_promo"]:not(:checked)').each( (index, s) => {
            failList.push(s.value)
        });
        $('input[name="stu_transfer"]:checked').each((index, s)=> {
            transferList.push(s.value)
        })

        let filteredPromoted = promotionList.filter(student =>  !transferList.includes(student) )
        let filteredFailed = failList.filter(student => !transferList.includes(student) )

        $.ajax({
            url 	: baseURL + '/promote-students/action',
            type 	: 'POST',
            async: false,
            dataType: 'json',
            data 	: {
                _token : _token,
                passed : JSON.stringify(filteredPromoted),
                failed : JSON.stringify(filteredFailed),
                transferred : JSON.stringify(transferList),
                to_standard : to_standard,
                academicYear : academicYear
            },
            encode 	: !0
        }).done(t=> {
            if(t.Status){
            }
        }).fail(t=> {
        });
    } catch(err){
    }
    return false;
}

const deleteDegreeInputs = () => {

   let target = $('.mi-grid-4-layout.degrees').last()
  let isLast = target.attr('id')
  if (isLast == 'main'){
        return false;
    }
    target.remove()
}

const addDegreeInputs = () => {
    errMsg.addClass('d-none')

   let el = $('.mi-grid-4-layout').last().children("div").first().children('input.degree').val()

   if (el == ''){
    errMsg.removeClass('d-none').html('Please fill the given input fields');
    return false;
   }

    let template =  `<div class='mi-grid-4-layout degrees'>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Degree</label>
        <input type='text' class='form-control spl input-only degree' id='degree' />
    </div>
    <div class=''>
        <label for='validationCustom03' class='form-label'>Graduation Year</label>
        <input type='text' class='form-control spl years-only graduationYear' minlength="4" maxlength="4"/>
    </div>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Class</label>
        <input type='text' class='form-control spl input-only degree-class' id='class' />
    </div>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Percentage</label>
        <input type='text' class='form-control spl decimal-numbers percentage' id='percentage' maxlength="5" />
    </div>
    </div>`;

    $('.years-only').on('keypress keyup blur', function(event) {

        $(this).val($(this).val().replace(/[^\d].+/, ''));
        if ((event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });

    $('.decimal-numbers').on('keypress keyup blur', function(event) {

        $(this).val($(this).val().replace(/[^0-9\.]/g, ''));
        if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });

    $('.add-degree').append(template);

   return false;
}

const AddUpdateStaffs = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let firstName = $("#firstname"),
        lastName = $("#lastname"),
        dateOfBirth = $("#date-of-birth"),
        fathername = $("#fathername"),
        mothername = $("#mothername"),
        guardianname = $("#guardianname"),
        pMobile = $("#p-mobile"),
        sMobile = $("#s-mobile"),
        email = $("#email"),
        address = $("#address"),
        city = $("#city"),
        state = $("#state"),
        designation = $("#designation"),
        pincode = $("#pincode"),
        organization = $("#organization"),
        yrOfExp = $("#yr-of-exp"),
        assignedSubjects = $("#assigned-subjects"),
        assignedClass = $("#assigned-class"),
        reportingTo = $("#reporting-to"),
        password = $("#password");
    
    let proofType = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(firstName.val() == ''){	
        firstName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' FirstName is required'); 
        firstName.focus();
        return false;
	}
    if(lastName.val() == ''){
        lastName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('LastName is required');
        lastName.focus();
        return false;
    }
    if(dateOfBirth.val() == ''){
        dateOfBirth.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date of Birth is required');
        dateOfBirth.focus();
        return false;
    }
    if(document.getElementById('parents').checked == true){
    if(fathername.val() == ''){
        fathername.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Father Name is required');
        fathername.focus();
        return false;
    }
    if(mothername.val() == ''){
        mothername.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Mother Name is required');
        mothername.focus();
        return false;
    }
    } else {
        if(guardianname.val() == ''){
            guardianname.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Guardian Name is required');
            guardianname.focus();
            return false;
            }
    }
    if(pMobile.val() == ''|| pMobile.val().length>10 ||pMobile.val().length<10){
        pMobile.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('10 digit MobileNo required');
        pMobile.focus();
        return false;
    }else{
        if(!phoneValidation(pMobile.val())){
            pMobile.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild MobileNo is required');
            pMobile.focus();
            return false;
        }
    }
    if(email.val() == ''){
        email.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Email is required');
        email.focus();
        return false;
    }else{
        if(!emailValidation(email.val())){
            email.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('Vaild Email is required');
            email.focus();
            return false;
        }
    }
    if(address.val() == ''){
        address.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Address is required');
        address.focus();
        return false;
    }
    if(city.val() == ''){
        city.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('City is required');
        city.focus();
        return false;
    }
    if(pincode.val() == ''){
        pincode.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Pincode is required');
        pincode.focus();
        return false;
    }
    if(state.val() == null){
        state.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' State is required');
        return false;
    }
    
    if(organization.val() == null){
        organization.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Organization is required');
        return false;
    }
    
    if(yrOfExp.val() == ''){
        yrOfExp.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Year of Experience is required');
        yrOfExp.focus();
        return false;
    }
    if(designation.val() == ''){
        designation.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Designation is required');
        designation.focus();
        return false;
    }
    if(assignedSubjects.val() == null){
        assignedSubjects.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Assigned Subject is required');
        return false;
    }
    if(assignedClass.val() == null){
        assignedClass.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('AssignedClass is required');
        return false;
    }
    if(reportingTo.val() == null){
        reportingTo.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' ReportingTo is required');
        return false;
    }
    // if(editId == '' && password.val() == ''){
    //     password.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Password is required');
    //     password.focus();
    //     return false;
    // }
  
    console.log(assignedClass.val())
  
    const body = new FormData();

    let fileValidate = filesValidate();

    if(!fileValidate){
        errMsg.html('Provide valid file').removeClass('d-none');
        return false;
    }else{

        if(fileValidate.length > 0){
            let i = 0;   
            for(let file of fileValidate){
                body.append(`files_${i}`, file);
                i++;
            }
            body.append('totalFiles', i);
        } 
    }

    let details = {
        firstName : firstName.val(),
        lastName : lastName.val(),
        gender : $('input[name=gender]:checked').val(),
        dateOfBirth: dateOfBirth.val(),
        parent_guardian : $('input[name=parent_guardian]:checked').val(),
        fathername : fathername.val(),
        mothername : mothername.val(),
        guardianname : guardianname.val(),
        pMobile : pMobile.val(),
        sMobile : sMobile.val(),
        email : email.val(),
        address : address.val(),
        city : city.val(),
        state : state.val(),
        pincode : pincode.val(),
        organization : organization.val(),
        yrOfExp : yrOfExp.val(),
        designation : designation.val(),
        assignedClass : assignedClass.val(),
        assignedSubjects : assignedSubjects.val(),
        reportingTo : reportingTo.val(),
        password : password.val(),
        editId
    };

   let degrees = $('input.degree')

   let degreeCount = 0;

  try {
    $.each(degrees, (index, inp) => {
    if ($(inp).val() != '') {
        
        let degree = $('input.degree')[index];
        let gradYear = $('input.graduationYear')[index];
        let rankClass = $('input.degree-class')[index];
        let percentage = $('input.percentage')[index];
        
        if($(gradYear).val() == ''){
            $(gradYear).addClass('err-input-admin'); 
            throw 'Graduation Year is required';
        } else {
            let year = $(gradYear).val();
            year = parseInt(year)
            if (year < 1972) {
            throw 'Graduation Year must be after 1972';
            } else if (year > new Date().getFullYear()){
            throw 'Graduation Year must not be later than current year';
            }
        }
        if ($(rankClass).val() == ''){
            $(rankClass).addClass('err-input-admin'); 
            throw 'Class is required';
        }
        if ($(percentage).val() == ''){
            $(percentage).addClass('err-input-admin'); 
            throw 'Percentage is required';
        }
        details['degree'+index] = $(degree).val().replaceAll(',',' ')
        details['graduationYear'+index] = $(gradYear).val()
        details['rankClass'+index] = $(rankClass).val().replaceAll(',',' ')
        details['percentage'+index] = $(percentage).val()
        degreeCount++;
        }   
        
    })
} catch (err){
    errMsg.removeClass('d-none').html(`${err} is required`);
    errMsg.focus()
    return false;
}

    details['degreeCount'] = degreeCount;

    console.log(details)

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/teachers/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let change = '<span class="badge badge-bg text-bg-success">New</span>';

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val()
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            };

            let inUpAry = [
                incCount,
                `${results.stffFirstName} - ${results.stffLastName} ${change}`,
                results.gender,
                results.date_of_birth,
                results.designation,
                results.qualifications,
                results.emlOfficialAddress,
                results.condOfficialNumber,
                results.stffIsStatus ? spanActive:spanInactive,
                `<i data-feather='edit' color="blue" title='Edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-${incCount}' title='Status' onclick='editTeacher(${results.stffId}, ${incCount})'></i>
                <i onclick ="return changeStatus('teachers', '${results.stffId}', 'row-${incCount}')" data-feather='power' color="red" class='menu-icon-form-td-i cursor-pointer'></i>
                <i data-bs-toggle="modal" onclick="generateTeacherModal(${results.stffId})" data-bs-target="#profileModal" data-feather='eye' color="green" class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }
            $(`.table-datatable tr#${rowId} td:nth(9)`).attr(attrBute)
            $(`.table-datatable tr#${rowId} td:nth(8)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();
            showUpdateToast(response.Msg);

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editTeacher = async (stfId, getId) => {

    for(let i = 0; i< 10; i++){
        deleteDegreeInputs()
    }

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
        console.log(pData)
    } else {
        alert('Some error in Edit AJAX')
    }

    $('.current-row').val(getId)
      
    $(`input[name=gender][value=${pData.stffGender}]`).prop('checked', true);

    $('#firstname').val(pData.stffFirstName);
    $('#lastname').val(pData.stffLastName == 'null'? '' : pData.stffLastName);
    $("#fathername").val(pData.father_name == 'null'? '' : pData.father_name);
    $("#mothername").val(pData.mother_name == 'null'? '' : pData.mother_name);
    $("#guardianname").val(pData.guardian_name == 'null'? '' : pData.guardian_name);
    $('#p-mobile').val(pData.condOfficialNumber);
    $('#s-mobile').val(pData.condPersonalNumber == 'null'? '' : pData.condPersonalNumber);
    $('#email').val(pData.emlOfficialAddress == 'null'? '' : pData.emlOfficialAddress);
    $('#address').val(pData.address == 'null' || pData.address == undefined ? '' : pData.address);
    $('#city').val(pData.city == 'null' || pData.city == undefined ? '' : pData.city);
    $('#state').val(pData.state).attr('selected','selected');
    $('#organization').val(pData.org_id).attr('selected','selected');
    $('#designation').val(pData.designation).attr('selected','selected');
    $('#reporting-to').val(pData.reporting_to).attr('selected','selected');
    $('#assigned-class').val(JSON.parse(pData.ogcstffClsMasterId))
    $('#assigned-subjects').val(JSON.parse(pData.ogcstffSubjectId))
    $('#assigned-class').trigger("chosen:updated")
    $('#assigned-subjects').trigger("chosen:updated")
    $('#pincode').val(pData.pincode == 'null' || pData.pincode == undefined ? '' : pData.pincode);
    $('#date-of-birth').val(pData.stffDOB == 'null' || pData.stffDOB == '0000-00-00'? '' : pData.stffDOB);
    $('#yr-of-exp').val(pData.yearsOfExp == 'null' || pData.yearsOfExp == null? '' : pData.yearsOfExp);
    $('#password').val('');
    if (pData.qualifications != null){
        let count = pData.qualifications.split(',').length;

    $("#degree").val(pData.qualifications.split(', ')[0] == 'null'? '' : pData.qualifications.split(',')[0]);
    $('#graduationYear').val(pData.passedYears.split(', ')[0]);
    $("#class").val(pData.degree_classes.split(',')[0] == ' null'? '' : pData.degree_classes.split(',')[0]);
    $("#percentage").val(pData.percentages.split(',')[0] == ' null'? '' : pData.percentages.split(',')[0]);

        for(let i = 1; i<count; i++){
            let template =  `<div class='mi-grid-4-layout degrees'>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Degree</label>
        <input type='text' class='form-control spl input-only degree' id='degree' value='${pData.qualifications.split(', ')[i] == 'null'? '' : pData.qualifications.split(',')[i]}'/>
    </div>
    <div class=''>
        <label for='validationCustom03' class='form-label'>Graduation Year</label>
        <input type='text' class='form-control spl years-only graduationYear' minlength="4" maxlength="4" value='${pData.passedYears.split(', ')[i]}'/>
    </div>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Class</label>
        <input type='text' class='form-control spl input-only degree-class' id='class' value='${pData.degree_classes.split(',')[i] == ' null'? '' : pData.degree_classes.split(',')[i]}'/>
    </div>
    <div class=''>
        <label for='validationCustom05' class='form-label'>Percentage</label>
        <input type='text' class='form-control spl decimal-numbers percentage' id='percentage' maxlength="5" value='${pData.percentages.split(',')[i] == ' null'? '' : pData.percentages.split(',')[i]}'/>
    </div>
    </div>`;

    $('.add-degree').append(template);

        }
    }
    $('#_id').val(pData.staff_id);

    hideShowFormEditState(false, true);   
}


const AddUpdateLessons = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let syllabus = $('#syllabus'), medium = $('#medium'), standard = $('#standard'), subject = $('#subject'), lessonName = $('#lessonName'), lessonOrder = $('#lessonOrder');

    errMsg.addClass('d-none');

    inputOnly.removeClass('err-input-admin');

    if(medium.val() == null){	
        medium.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Medium'); 
        return false;
	}
    if(syllabus.val() == null){	
        syllabus.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Syllabus'); 
        return false;
	}
    if(standard.val() == null){	
        standard.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Standard'); 
        return false;
	}
    if(subject.val() == null){	
        subject.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Subject'); 
        return false;
	}
    if(lessonName.val() == ''){	
        lessonName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Lesson Name'); 
        lessonName.focus();
        return false;
	}
    if(lessonOrder.val() == null){	
        lessonOrder.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Lesson Order'); 
        return false;
	}

    const body = new FormData();

    let details = {
        syllabus : syllabus.val(),
        medium : medium.val(),
        standard : standard.val(),
        subject : subject.val(),
        lessonName : lessonName.val(),
        lessonOrder : lessonOrder.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/lessons/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.data;
            let change = '<span class="badge badge-bg text-bg-success">New</span>';

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }
            let stat = '<span class="badge bg-success text-bg-success">Active</span>';
            if(results.lessonstatus == 'In-Active'){
                stat = '<span class="badge bg-danger text-bg-success">In-Active</span>';
            }

            let inUpAry = [
                incCount,
                `${results.syllabusName}`,
                `${results.lessonName} ${change}`,
                `${results.standard}`,
                `${results.subject}`,
                stat,
                `<i color='blue' id='column-td-${incCount}' onclick = 'editLesson(${results.lnId}, ${incCount})' data-feather='edit' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color='red' onclick = "return changeStatus('lessons', '${results.lnId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }
            console.log(rowId)
            $(`.table-datatable tr#${rowId} td:nth(6)`).attr(attrBute)
            $(`.table-datatable tr#${rowId} td:nth(5)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editLesson = async (lessonId, getId) => {
    
    const body = new FormData();
    body.append('id', lessonId)
    body.append('type', 'lesson')

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

    $('.current-row').val(getId)
      
    $('#medium').val(pData.medium_id).trigger('chosen:updated');
    $('#syllabus').val(pData.syllabusId).trigger('chosen:updated');
    $('#standard').val(pData.standard_id).trigger('chosen:updated');
    $('#subject').val(pData.SubjectId).trigger('chosen:updated');;
    $('#lessonName').val(pData.lessonName);
    $('#lessonOrder').val(pData.lessonOrder).trigger('chosen:updated');;
    $('#_id').val(pData.lnId);

    hideShowFormEditState(false, true);
}

const AddUpdateVideos = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let title = $('#title'), description = $('#description'),videoLink=$('#videoLink');
    

    let check=$('#rowlength .resource-one').length;

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(title.val() == ''){	
        title.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Title is required'); 
        title.focus();
        return false;
	}
    if(description.val() == ''){	
        description.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Description is required'); 
        description.focus();
        return false;
	}
    if(videoLink.val() == ''){

        control = document.getElementById('videoLink');

        if(editId == '' && control.files.length == 0){
            errMsg.html('Upload valid video file').removeClass('d-none');
            return false;
        }
    }
    for(i=0; i<check; i++){
        if($('.resource-one').children('input')[i].value ==''){
            errMsg.removeClass('d-none').html('resource fill it'); 
            $('.resource-one').children('input')[i].focus();
            return false; 
        }
        if($('.resource-two').children('input')[i].value==''){
            errMsg.removeClass('d-none').html('url fill it'); 
            $('.resource-two').children('input')[i].focus();
            return false;  
        }
    }   
    

    const body = new FormData();

    let resourceurl1='';
        for(let i=0; i<check; i++){
            let resource={
                resource:$('.resource-one').children('input')[i].value,
                url:$('.resource-two').children('input')[i].value,
               
            };
           resourceurl1 += JSON.stringify(resource)+',';
           
        }     
    let details = {
        title        : title.val(),
        description  : description.val(),
        videoLink    : videoLink.val(),
        otherRes     : resourceurl1,
        editId
    };
    
    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/videos/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;
            let change = '<span class="badge badge-bg text-bg-success">New</span>';

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }
            let inUpAry = [
                incCount,
                `${results.vdTitle} ${change}`,
                results.vdDescription,
                results.vdIsStatus ? spanActive : spanInactive,
                `<i data-feather='edit' id='column-td-${incCount}' onclick='editVideo(this)' class='menu-icon-form-td-i cursor-pointer'></i> 
                <i onclick = "return changeStatus('videos', '${results.vdId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(5)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(4)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable()
        }

    }catch(err){
        throw err;
    }
    return false;
}

const editVideo = (current) => {
    let cData = $(current).parent().attr("data-json");
    let getId = $(current).attr("id").split("-td-")[1];

    $(".current-row").val(getId);
    let pData = JSON.parse(cData);

    $("#title").val(pData.vdTitle);
    $("#description").val(pData.vdDescription);
    $("#videoLink").val(pData.vdLink);

    $("#otherRes").val(pData.vdOtherLink);

    let preRes1 = [];
    let preUrl1 = [];

    let length = pData.vdOtherLink.split("},").length;
    let length1 = pData.vdOtherLink.split(",").length;

    if (pData.vdOtherLink !== null) {
        for (i = 0; i < length - 1; i++) {
            let resource1 = pData.vdOtherLink.split("},");

            let resource2 = resource1[i].split(":");

            let r1 = resource2[1].split('"');

            preRes1.push(r1[1]);
        }
        i = i + 1;
    }

    if (pData.vdOtherLink !== null) {
        for (i = 0; i < length1 - 2; i++) {
            let resource1 = pData.vdOtherLink.split(",");
            let resource3 = resource1[i + 1].split('"url":"');
            let r2 = resource3[1];
            preUrl1.push(r2);
        }
        i = i + 2;
    }
    let preeurl = [];
    let n = 0;
    while (n < preUrl1.length) {
        let r = preUrl1[n].split('"}');
        preeurl.push(r[0]);
        n += 2;
    }

    if (preRes1.length > 0) {
        for (i = 1; i < preRes1.length; i++) {
            var parent = $("#other-resources");
            const row1 = $("<div class='row' id='rowlength'>");
            const e1 = $(
                "<div class='col-md-5 resource-one'> <label for='validationCustom03' class='form-label'>Title</label> <input type='text' class='form-control spl input-only'id='resource" +
                    counter +
                    "'/> </div>"
            );
            const e2 = $(
                "<div class='col-md-5 resource-two'> <label for='validationCustom03' class='form-label'>URL</label> <input type='url' class='form-control spl input-only' id='url" +
                    counter +
                    "' /> </div>"
            );
            const ico = $(
                '<div class="col-md-2"> <div class="row"> <div class="col-md-6"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle menu-icon-form-td-i cursor-pointer" color="green" id="" onclick="addInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg></div> <div class="col-md-6"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle menu-icon-form-td-i cursor-pointer" color="red" id="" onclick="closeInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg></div></div></div>'
            );

            row1.append(e1);
            row1.append(e2);
            row1.append(ico);
            parent.append(row1);

            var current1 = $("#rowlength");

            current1.parent().addClass();
            current1.parent().add();

            counter++;
        }
    }

    let check = preRes1.length;
    for (r = 1; r <= check; r++) {
        $("#resource" + r).val(preRes1[r - 1]);
        $("#url" + r).val(preeurl[r - 1]);
    }
    $("#_id").val(pData.vdId);

    hideShowFormEditState(false, true);
};

const videosValidate = () => {

    let control = document.getElementById('videoLink'), form = [];

    if(control.files.length > 0){

        for(let file of control.files){

            if(file.type === 'video/mp4'||file.type === 'video/MP4'|| file.type === 'video/avi' || file.type === 'video/mov' || file.type === 'video/wmv'){
                let size = (file.size/1024) / 1024;
                if(size > 3){
                    return false;
                }

                form.push(file);
            }else{
                return false;
            }
        }
        return form;
    }

    return true;
}


const setURLSearchParam = (key, value) => {
    const url = new URL(window.location.href);
    url.searchParams.set(key, value);
    window.history.pushState({ path: url.href }, '', url.href);
}

const openServices = () => {
    
}

const loadSubjectByStd = e => {

    let questionCount = $('#question-count');

    if (questionCount.val() == ''){
        questionCount.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' No of Questions is required'); 
            return false;
    }

    localStorage.removeItem('questions');
    $('#preview-button').addClass('d-none');
    $('#topic-list').empty();
    $('#questions-list').empty();
    $('#topics-div').addClass('d-none');
    $('#ques-div').addClass('d-none');
    
    let mediumid = $('#medium').val(); 
    let stdid = $(e).val();
    let subid = $('#subject').val(); 

    if (subid == null) subid = 0;
    if (mediumid == null) {
        errMsg.removeClass('d-none').html('Medium is required');
        $('#standard').val('').trigger('chosen:updated');
        return false;
    }

    // Get lessons by Standard, subject, medium
    $.ajax({
        url 	: BasURL + 'insight/find-subjects/'+stdid,
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            stdid :stdid,
            subid :subid,
            mediumid :mediumid
		},
        encode 	: !0
	}).done( (t) => {
        
        if(t.success){
            let subjects =  t.subjects;
            $('#subject').empty();
            $('#lessons').empty();
            $('#subject').append('<option selected disabled value="">Choose...</option>');
            $('#lessons').append('<option selected disabled value="">Choose...</option>');
            subjects.forEach(element => {
                $('#subject').append('<option value="'+element.subjId+'">'+element.subjName+'</option>');
            });
			showUpdateToast(`${subjects.length} Subjects Loaded`);
		}
		
	}).fail((t) => {
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
}

const loadSubject = e => {
    return;
    /**
     * Disabled
     */
    let mediumid = $('#medium').val();
    let stdid = $('#standard').val();

    if(mediumid == null || stdid == null){

        alert('Please select the previous fields');
        $('#subject').val('').trigger('chosen:updated');
        return false;

    }
}

const loadLessonsBySyllabus = (e, lessonid) => {
    
    let mediumid = $('#medium').val();
    let stdid = $('#standard').val();
    let subid =  $('#subject').val();
    let syid = e.value; 

    if (stdid == null || subid == null || mediumid == null) {
        alert('Please select the previous fields');
        $('#syllabus').val('').trigger('chosen:updated');
        return false;
    }

    // Get lessons by Standard,syllabus, subject
    $.ajax({
        url 	: BasURL + 'insight/find-lessons-bysyllabus',
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            syid :syid,
            mediumid :mediumid,
            stdid :stdid,
            subid :subid
		},
        encode 	: !0
	}).done( (t) => {
        
        if(t.success){
            let lessons =  t.lessons;
            $('#lessons').empty();
            $('#lessons').append('<option selected disabled value="">Choose...</option>');
            lessons.forEach(element => {
                if(lessonid == element.lnId){
                    $('#lessons').append('<option value="'+element.lnId+'" selected>'+element.lessonName+'</option>');
                } else {
                    $('#lessons').append('<option value="'+element.lnId+'">'+element.lessonName+'</option>');
                }
            });
			showUpdateToast(`${lessons.length} Lessons Loaded.`);
		}
		
	}).fail((t) => {
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
}

const loadTopicsByLessons = (e, lesson_id, topicid) => {
    
    let mediumid = $('#medium').val();
    let stdid = $('#standard').val();
    let subid =  $('#subject').val();
    let syid = $('#syllabus').val(); 
    let lessonId = e.value;
    if (lessonId == '') {
        lessonId = lesson_id;
    }
    
    if (stdid == null || subid == null || mediumid == null || syid == null) {
        alert('Please select the previous fields');
        $('#lessons').val('').trigger('chosen:updated');
        return false;
    }

    $.ajax({
        url 	: BasURL + 'insight/find-topics-bylessons',
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            lessonId :lessonId,
		},
        encode 	: !0
	}).done( (t) => {
        
        if(t.success){
            let topics =  t.topics;
            $('#topicid').empty();
            $('#topicid').append('<option selected disabled value="">Choose...</option>');
            topics.forEach(element => {
                if (element.id == topicid){
                    $('#topicid').append('<option value="'+element.id+'" selected>'+element.name+'</option>');
                } else {
                    $('#topicid').append('<option value="'+element.id+'">'+element.name+'</option>');
                }

            });
			
		}
		
	}).fail((t) => {
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
    return true;
}

const loadQuestionsByLesson = e => {
    
    let mediumid = $('#medium').val();
    let stdid = $('#standard').val();
    let subid =  $('#subject').val();
    let syid = $('#syllabus').val(); 
    let lessonId = e.value; 

    if (stdid == null || subid == null || mediumid == null || syid == null) {
        alert('Please select the previous fields');
        $('#lessons').val('').trigger('chosen:updated');
        return false;
    }

    $.ajax({
        url 	: BasURL + 'insight/find-questions-bylessons',
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            lessonId :lessonId,
		},
        encode 	: !0
	}).done( (t) => {
        
        if(t.success){
            let topiccount =  t.topiccount;
            table.DataTable().clear().draw();
            topiccount.forEach((element, index) => {
                let easy = element.Easy??0;
                let medium = element.Medium??0;
                let hard = element.Hard??0;
                let total = easy+medium+hard;
                table.dataTable().fnAddData([index+1, element.topicname,total,easy,medium,hard,`<a href="${BasURL}insight/view-questions/${element.topicid}?page=1"><i data-feather='eye' color="purple" class='menu-icon-form-td-i cursor-pointer'></i></a>`],true)
            });
			feather.replace();
            $('.mi-table-space').removeClass('d-none')
		}
		
	}).fail((t) => {
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
}

const AddUpdateTopics = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let medium = $('#medium'), standard = $('#standard'), subject = $('#subject'), syllabus = $('#syllabus'), topicname =$('#topicname'), description = $('#description'), 
        lessons = $('#lessons'), links = $('#links'), otherlinks =$('#otherlinks'), file = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(medium.val() == null){	
        medium.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Medium is required'); 
        return false;
	}
    if(standard.val() == null){	
        standard.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Standard is required'); 
        return false;
	}
    if(subject.val() == null){	
        subject.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Subject is required'); 
        return false;
	}
    if(syllabus.val() == null){	
        syllabus.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Syllabus is required'); 
        return false;
	}
    if(lessons.val() == null){	
        lessons.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Lesson is required'); 
        return false;
	}
    if(topicname.val() == ''){	
        topicname.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Topic is required'); 
        return false;
	}
    // if(description.val() == ''){
		
    //     description.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Description is required'); 
    //     return false;
	// }
    // if(links.val() == null){
		
    //     links.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Video is required'); 
    //     return false;
	// }
    // if(otherlinks.val() == ''){
		
    //     otherlinks.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Other Link is required'); 
    //     return false;
	// }
    // if(testid.val() == null){
		
    //     testid.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Online Test is required'); 
    //     return false;
	// }

    // if(editId == '' && file.val() == ''){
    //     control = document.getElementById('file');
    //     if(editId == '' && control.files.length == 0){
    //         errMsg.html('Upload valid file').removeClass('d-none');
    //         return false;
    //     }
    // }
    
    const body = new FormData();

    let fileValidate = filesValidate();

    if(!fileValidate){
        errMsg.html('File size Must be below 10MB and Filetype should be jpg|pdf').removeClass('d-none');
        return false;
    }else{
        if(fileValidate.length > 0){
            let i = 0;   
            for(let file of fileValidate){
                body.append(`files_${i}`, file);
                i++;
            }
            body.append('totalFiles', i);
        } 
    }

    let details = {
        mediumid           : medium.val(),
        standardid            : standard.val(),
        name            : topicname.val(),
        description            : description.val(),
        videoid            : links.val(),
        // otherlinks            : otherlinks.val(),
        // onlinetestid            : testid.val(),
        // imageurl            : file.val(),
        subjectid            : subject.val(),
        syllabusid            : syllabus.val(),
        lessonid            : lessons.val(),
        status : 1,
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/topics/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let change = '<span class="badge badge-bg text-bg-success">New</span>';
            change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }
                

            let inUpAry = [
                incCount,
                `${results.name} ${change}`,
                results.mmName,
                results.clssName,
                results.subjName,
                results.syName,
                results.lnLessonName,
                results.status ? spanActive:spanInactive,
                `<i data-feather='edit' color="blue" id='column-td-${incCount}' onclick='editTopic(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i onclick = "return changeStatus('topics', '${results.id}', 'row-${incCount}')" data-feather='power' color="red" class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(8)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(7)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editTopic = async (topicid, getId) => {

    const body = new FormData();
    body.append('id', topicid)
    body.append('type', 'topic')

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

    $('.current-row').val(getId)
      
    $('#medium').val(pData.mediumid).trigger('chosen:updated');
    $('#standard').val(pData.standardid).trigger('chosen:updated');
    $('#subject').val(pData.subjectid).trigger('chosen:updated');
    $('#syllabus').val(pData.syllabusid).trigger('chosen:updated');
    loadLessonsBySyllabus(document.getElementById('syllabus'), pData.lessonid);
    $('#topicname').val(pData.name);
    $('#description').val(pData.description);
    $('#links').val(pData.videoid);
    $('#_id').val(pData.id);
    $('#lessons').val(pData.lessonid).trigger('chosen:updated');

    hideShowFormEditState(false, true);
}

const changeQuestionType = e => {
    switch (parseInt(e.value)) {
        case 1:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').removeClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 2:
            $('#mcq').removeClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').removeClass('d-none');
            break;
        case 3:
            $('#mcq').addClass('d-none');
            $('#truefalse').removeClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 4:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').removeClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
    }
}

const AddUpdateOnlineTests = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let topicid = $('#topicid'), question = $('#questions'), qtype = $('#question-type'), trueanswer = $('#true-answer'),
                             marks = $('#marks'), choice1 = $('#choice1'), blankanswer = $('#blankanswer'),
                                choice2 = $('#choice2'), choice3 = $('#choice3'), choice4 = $('#choice4'), difficulty = $('#difficulty');
    
    let answer = '', choice = '';

    switch (parseInt(qtype.val())) {
        case 1:
            answer = $('#blankanswer').val();
            break;
        case 2:
            answer = $('#mcqanswer').val();
            choice = $('#choice1').val()+'~'+$('#choice2').val()+'~'+$('#choice3').val()+'~'+$('#choice4').val();
            break;
        case 3:
            answer = $('#true-answer').val();
            break;
        case 4:
            answer = $('#shortanswer').val();
            break;
    }

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');
    
    if(topicid.val() == null){
		
        topicid.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Topic is required'); 
        return false;
	}
    if(question.val() == ''){
		
        question.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Question is required'); 
        return false;
	}
    if(qtype.val() == null){
		
        qtype.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Question Type required'); 
        return false;
	}else{

        switch (parseInt(qtype.val())) {
            case 1:
                if(blankanswer.val() == ''){
                    blankanswer.addClass('err-input-admin'); 
                    errMsg.removeClass('d-none').html('Answer required'); 
                    return false;
                }
                break;
            case 2:
                if(choice1.val() == ''){
                    choice1.addClass('err-input-admin'); 
                    errMsg.removeClass('d-none').html('Choice1 is required'); 
                    return false; 
                }else if(choice2.val() == ''){
                    choice2.addClass('err-input-admin'); 
                    errMsg.removeClass('d-none').html('Choice2 is required'); 
                    return false; 
                }else if(choice3.val() == ''){
                    choice3.addClass('err-input-admin'); 
                    errMsg.removeClass('d-none').html('Choice3 is required'); 
                    return false; 
                }else if(choice4.val() == ''){
                    choice4.addClass('err-input-admin'); 
                    errMsg.removeClass('d-none').html('Choice4 is required'); 
                    return false; 
                }
                break;
            case 3:
                if(trueanswer.val() == null){
                    trueanswer.addClass('err-input-admin');
                    errMsg.removeClass('d-none').html('Select the answer');
                    return false;
                }
                break;
        }
    }
    if(marks.val() == ''){
		
        marks.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Marks is required'); 
        return false;
	}
    if(difficulty.val() == ''){
		
        difficulty.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Difficulty is required'); 
        return false;
	}

    const body = new FormData();

    let details = {
        question           : question.val(),
        topicid            : topicid.val(),
        questiontype            : qtype.val(),
        choice            : choice,
        answer            : answer,
        marks            : marks.val(),
        difficulty      :difficulty.val(),
        status : 1,
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/online-tests/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let type = '';

            switch (results.questiontype) { 
                case 1:
                    type = 'Fill In the Blanks';
                    break;
                case 2:
                    type = 'Choose the Best Answers';
                    break;
                case 3:
                    type = 'Maching ';
                    break;
                case 4:
                    type = 'True or False';
                    break;
                case 5:
                    type = 'ShortMarks';
                    break;
                default:
                    type = 'Error';    
            }
        
            let inUpAry = [
                incCount,
                results.question,
                type,
                results.choice,
                results.answer,
                results.marks,
                results.difficulty,
                results.status ? spanActive : spanInactive,
                `<i data-feather='edit' id='column-td-${incCount}' onclick='editOnlinetests(this)' class='menu-icon-form-td-i cursor-pointer'></i>
                <i onclick = "return changeStatus('onlinetests', '${results.id}, 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                <i onclick ="return navigatePage('${results.id}')" data-feather='search' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(4)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(3)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editOnlinetests = current => {

    let cData = $(current).parent().attr('data-json');

    let getId = $(current).attr('id').split('-td-')[1];

    $('.current-row').val(getId)
      
    let pData = JSON.parse(cData);

    $('#topicid').val(pData.topicid).trigger('chosen:updated');
    $('#questions').val(pData.question);
    $('#question-type').val(pData.questiontype).trigger('chosen:updated');

    switch (parseInt(pData.questiontype)) {
        case 1:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').removeClass('d-none');
            $('#blankanswer').val(pData.answer);
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 2:
            $('#mcq').removeClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').removeClass('d-none');
            $('#mcqanswer').val(pData.answer).trigger('chosen:updated');
            const arr = pData.choice.split('~');
            $('#choice1').val(arr[0]);
            $('#choice2').val(arr[1]);
            $('#choice3').val(arr[2]);
            $('#choice4').val(arr[3]);
            break;
        case 3:

            break;
        case 4:
            $('#mcq').addClass('d-none');
            $('#truefalse').removeClass('d-none');
            $('#true-answer').val(pData.answer).trigger('chosen:updated');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 5:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').removeClass('d-none');
            $('#shortanswer').val(pData.answer);
            $('#mcqdiv').addClass('d-none');
            break;
    }

    $('#marks').val(pData.marks);
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
}

const AddUpdateEvents = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let eventname = $('#eventname'), eventtype = $('#event-type'), description = $('#description'), 
        chiefguest = $('#chiefguest'), date =$('#date'), start = $('#start'), 
        end = $('#end'), place = $('#place'), sponsored =$('#sponsored'), 
        organized = $('#organized'), registration = $('#registration'), 
        file = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    let startDateTime = date.val() + ' ' + start.val();
    let stt = new Date(startDateTime);
    stt = stt.getTime();

    let endDateTime = date.val() + ' ' + end.val();
    let endt = new Date(endDateTime);
    endt = endt.getTime();

    if (stt > endt){
        eventname.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Please check start and end time'); 
        start.focus();
        return false;
    }

    if(eventname.val() == ''){
		
        eventname.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Event Name is required'); 
        eventname.focus();
        return false;
	}
    if(eventtype.val() == null){
		
        eventtype.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Event Type is required'); 
        return false;
	}
    if(description.val() == ''){
		
        description.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Description is required'); 
        description.focus();
        return false;
	}
    // if(chiefguest.val() == ''){
		
    //     chiefguest.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Chief Guest is required'); 
    //     chiefguest.focus();
    //     return false;
	// }
    if(date.val() == ''){
		
        date.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date is required'); 
        date.focus();
        return false;
	}
    if(start.val() == ''){
		
        start.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Start time is required'); 
        start.focus();
        return false;
	}
    if(end.val() == ''){
		
        end.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('End time is required'); 
        end.focus();
        return false;
	}
    if(place.val() == ''){
		
        place.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Place is required'); 
        place.focus();
        return false;
	}
    // if(sponsored.val() == ''){
		
    //     sponsored.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Sponsored by is required'); 
    //     sponsored.focus();
    //     return false;
	// }
    if(organized.val() == ''){
		
        organized.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Organized by is required'); 
        organized.focus();
        return false;
	}
    // if(registration.val() == ''){
		
    //     registration.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Registration from is required'); 
    //     registration.focus();
    //     return false;
	// }
    
    // if(file.val() == ''){

    //     control = document.getElementById('file');

    //     if(editId == '' && control.files.length == 0){
    //         file.addClass('err-input-admin'); 
    //         errMsg.html('Upload valid file').removeClass('d-none');
    //         file.focus();
    //         return false;
    //     }
    // }

    const body = new FormData();

    let details = {
        evntName           : eventname.val(),
        evntType            : eventtype.val(),
        evntDescription            : description.val(),
        chiefguest            : chiefguest.val(),
        evntPlace            : place.val(),
        evntSponseredBy            : sponsored.val(),
        evntOrganisedBy            : organized.val(),
        evntDate            : date.val(),
        evntStartTime            : start.val(),
        evntEndTime            : end.val(),
        registrationFrom            : registration.val(),
        formUrl            : file.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/events/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.evntType,
                results.evntName,
                results.evntDate,
                results.evntDescription,
                results.evntIsStatus ? spanActive : spanInactive,
                `<i data-feather='edit' color="blue" id='column-td-${incCount}' onclick='editEvent(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('events', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                <i data-bs-toggle="modal" onclick="generateEventsModal(${results.id})" data-bs-target="#eventsModal" data-feather='eye' color="purple" class='menu-icon-form-td-i cursor-pointer'></i>`
            ];
            

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(6)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(5)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editEvent = async(eventId, getId) => {

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

    $('.current-row').val(getId)
      
    $('#eventname').val(pData.evntName);
    $('#event-type').val(pData.evntType).trigger('chosen:updated');
    $('#description').val(pData.evntDescription);
    $('#chiefguest').val(pData.chiefguest);
    $('#date').val(pData.evntDate);
    $('#start').val(pData.evntStartTime);
    $('#end').val(pData.evntEndTime);
    $('#place').val(pData.evntPlace);
    $('#sponsored').val(pData.evntSponseredBy);
    $('#organized').val(pData.evntOrganisedBy);
    $('#registration').val(pData.registrationFrom);
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
}

const AddUpdateBlogs = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let catid = $('#cat-id'), title = $('#title'), description = $('#description'), message = $('#message'), file = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(catid.val() == null){
		
        catid.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Category is required'); 
        return false;
	}
    if(title.val() == ''){
		
        title.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Title is required'); 
        title.focus();
        return false;
	}
    if(description.val() == ''){
		
        description.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Description is required'); 
        description.focus();
        return false;
	}
    if(message.val() == ''){
		
        message.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Message is required'); 
        message.focus();
        return false;
	}
    if(file.val() == ''){

        control = document.getElementById('file');

        if(editId == '' && control.files.length == 0){
            errMsg.html('Upload valid file').removeClass('d-none');
            file.focus();
            return false;
        }
    }

    const body = new FormData();

    let details = {
        categoryid           : catid.val(),
        title            : title.val(),
        description            : description.val(),
        message            : message.val(),
        fileurl            : file.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/blogs/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.title,
                results.categoryName,
                results.description,
                results.message,
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' title='Edit' data-toggle="tooltip" id='column-td-${incCount}' onclick='editBlog(${results.id},${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" data-toggle="tooltip" title='Change Status' onclick = "return changeStatus('blogs', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="purple" data-toggle="tooltip" title='View Additional Details' onclick ="return generateBlogModal('${results.id}')" data-feather='eye' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(7)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(6)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editBlog = async (blogId, getId) => {

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

    $('.current-row').val(getId)
      
    $('#cat-id').val(pData.categoryid).trigger('chosen:updated');
    $('#title').val(pData.title);
    $('#description').val(pData.description);
    $('#message').val(pData.message);
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
} 

const AddUpdateAnnouncements = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let typeid = $('#typeid'), title = $('#title'), message = $('#message'), file = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');
    
    if(typeid.val() == null){	
        typeid.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Type is required'); 
        return false;
	}
    if(title.val() == ''){
		
        title.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Title is required'); 
        title.focus();
        return false;
	}
    if(message.val() == ''){
		
        message.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Message is required'); 
        message.focus();
        return false;
	}
    // if(file.val() == ''){

    //     control = document.getElementById('file');

    //     if(editId == '' && control.files.length == 0){
    //         errMsg.html('Upload valid file').removeClass('d-none');
    //         file.focus();
    //         return false;
    //     }
    // }

    const body = new FormData();

    let details = {
        typeid           : typeid.val(),
        title            : title.val(),
        message            : message.val(),
        fileurl            : file.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/announcements/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.title,
                results.announcementType,
                results.message,
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' data-toggle="tooltip" title='Edit' id='column-td-${incCount}' onclick='editAnnouncement(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" data-toggle="tooltip" title="Change Status" onclick = "return changeStatus('announcements', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(5)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(4)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editAnnouncement = async (announcementId, getId) => {

    const body = new FormData();
    body.append('id', announcementId)
    body.append('type', 'announcement')

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

    $('.current-row').val(getId)
      
    $('#typeid').val(pData.typeid).trigger('chosen:updated');
    $('#title').val(pData.title);
    $('#message').val(pData.message);
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
} 

const AddUpdatePressReleases = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let title = $('#title'), lead = $('#lead'), message = $('#message'), publishing = $('#publishing'), file = $('#file');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');
    
    if(title.val() == ''){
		
        title.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Title is required'); 
        title.focus();
        return false;
	}
    if(lead.val() == ''){
		
        lead.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Lead Content is required'); 
        lead.focus();
        return false;
	}
    if(message.val() == ''){
		
        message.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Message Body is required'); 
        message.focus();
        return false;
	}
    if(publishing.val() == ''){
		
        publishing.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date is required'); 
        publishing.focus();
        return false;
	}
    // if(file.val() == ''){

    //     control = document.getElementById('file');

    //     if(editId == '' && control.files.length == 0){
    //         errMsg.html('Upload valid file').removeClass('d-none');
    //         file.focus();
    //         return false;
    //     }
    // }

    const body = new FormData();

    let details = {
        title           : title.val(),
        lead            : lead.val(),
        message            : message.val(),
        publishing            : publishing.val(),
        fileurl            : file.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/press-releases/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.title,
                results.lead,
                results.message,
                results.publishing,
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' id='column-td-${incCount}' onclick='editPressRelease(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('pressreleases', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(7)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(6)`).addClass('status');
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editPressRelease = async(prId, getId) => {

    const body = new FormData();
    body.append('id', prId)
    body.append('type', 'pressRelease')

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

    $('.current-row').val(getId);

    $('#title').val(pData.title);
    $('#lead').val(pData.lead);
    $('#message').val(pData.message);
    $('#publishing').val(pData.publishing).trigger('chosen:updated');
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
}

const AddUpdateReportSchedules = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let name = $('#name'), report = $('#report'), toaddress = $('#to_emails'), 
        ccaddress = $('#cc_emails') , bccaddress = $('#bcc_emails'), sendmode = $('#frequency') ;

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(name.val() == ''){	
        name.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Taskname is required'); 
        return false;
	}
    if(report.val() == null){	
        report.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Report is required'); 
        return false;
	}
    if(sendmode.val() == null){	
        sendmode.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html(' Send Mode is required'); 
        return false;
	}

    let toArray = [];
    let ccArray = [];
    let bccArray = [];

    toaddress.siblings("div").children("ul").children("li").each(function () {
            toArray.push($(this).children("span").attr("data-email"));
        });

    ccaddress
        .siblings("div").children("ul").children("li").each(function () {
            ccArray.push($(this).children("span").attr("data-email"));
        });
    bccaddress
        .siblings("div").children("ul").children("li").each(function () {
            bccArray.push($(this).children("span").attr("data-email"));
        });
        
    const body = new FormData();

    let details = {
        name           : name.val(),
        reportid            : report.val(),
        toaddress            : JSON.stringify(toArray),
        cc_address            : JSON.stringify(ccArray),
        bcc_address            : JSON.stringify(bccArray),
        sendmode            : sendmode.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/emails/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.name,
                results.reportid == 1 ? 'Progress Details' : results.reportid == 2 ? 'Student Reports' : results.reportid == 3 ? 'Staff Reports' : results.reportid == 4 ? 'Teacher Reports' : results.reportid == 5 ? 'Exam Reports' : 'NA',
                results.sendmode == 1 ? 'Daily' : results.sendmode == 2 ? 'Weekly' : results.sendmode == 3 ? '15days' : results.sendmode == 4 ? 'Monthly' : results.sendmode == 5 ? '3 Months' : results.sendmode == 6 ? '6 Months' : results.sendmode == 7 ? 'Yearly' : 'NA',
                results.toaddress,
                results.cc_address,
                results.bcc_address,
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' id='column-td-${incCount}' onclick='editReportSchedule(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('reportschedules', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(8)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(7)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editReportSchedule = async(rsId, getId) => {

    const body = new FormData();
    body.append('id', rsId)
    body.append('type', 'reportsSchedule')

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

    $('.current-row').val(getId)
      
    $('#_id').val(pData.id);
    $('#name').val(pData.name);
    $('#report').val(pData.reportid).trigger('chosen:updated');
    $('#frequency').val(pData.sendmode).trigger('chosen:updated');
    // Needs to be fixed
    $('multiple_emails-ul').each(function () {
        let rawHtlm = `<li class="multiple_emails-email">
                            <a href="#" class="multiple_emails-close" title="Remove"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle cursor-pointer" color="red"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg></a>
                            <span class="email_name" data-email="nanf@feaf.eaf">hello@feaf.eaf</span>
                        </li>`;
        let node = $(rawHtlm)
        $(this).append(node);
    });
    $('#to_emails').val(pData.toaddress);
    $('#cc_emails').val(pData.cc_address);
    $('#bcc_emails').val(pData.bcc_address);

    $.fn.multiple_emails();

    hideShowFormEditState(false, true);
}

const addUpdateExams = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let exam = $('#exam-type'), examName = $('#examname'), date = $('#date'), start = $('#start'), 
        end = $('#end'), passingMarks = $('#passing-marks');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(exam.val() == ''){
		
        exam.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Exam is required'); 
        return false;
	}
    if(date.val() == ''){
        
        date.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Date is required'); 
        return false;
	}
    if(examName.val() == ''){
        
        examName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Exam Name is required'); 
        return false;
    }
    if(passingMarks.val() == ''){
		
        passingMarks.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Passing Mark is required'); 
        return false;
	}

    let startDateTime = date.val() + ' ' + start.val();
    let stt = new Date(startDateTime);
    stt = stt.getTime();

    let endDateTime = date.val() + ' ' + end.val();
    let endt = new Date(endDateTime);
    endt = endt.getTime();

    if (stt > endt){
        examName.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Please check start and end time'); 
        start.focus();
        return false;
    }
    const body = new FormData();

    let details = {
        exam_type           : exam.val(),
        name                : examName.val(),
        date                : date.val(),
        start_time          : start.val(),
        end_time            : end.val(),
        passing_marks       : passingMarks.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/exams-details/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;
            let change = '<span class="badge badge-bg text-bg-success">New</span>';
            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }
            let inUpAry = [
                incCount,
                results.exam_type_name,
                results.date,
                `${results.name} ${change}`,
                results.start_time,
                results.end_time,
                results.passing_marks,
                results.isCompleted?'<span class="badge bg-danger text-bg-success">Completed</span>':'<span class="badge bg-success text-bg-success">Yet to be completed</span>',
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' id='column-td-${incCount}' onclick='editExams(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('exams', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];
            

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(9)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(8)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const setExamEndTime = current => {
    // need to be fixed
    //setting end time not working
    // let endTime = $('#end').attr({'min':current.stepUp(30), 'max':current.stepUp(180)})
}

const editExams = async(examId, getId) => {

    const body = new FormData();
    body.append('id', examId)
    body.append('type', 'exam')

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

    $('.current-row').val(getId)
      
    $('#exam-type').val(pData.exam_type).trigger('chosen:updated');
    $('#examname').val(pData.name);
    $('#date').val(pData.date);
    $('#start').val(pData.start_time);
    $('#end').val(pData.end_time);
    // needs fixing trying: to set min max time 
    // let start = document.getElementById('start').value;
    // $('#end').attr({'min':start.stepUp(30), 'max':start.stepUp(180)})
    $('#passing-marks').val(pData.passing_marks);
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
}

const showQuestions = e => {
    
}

const addInput = e => {
    var parent = $(e).parent().parent().parent().parent(); 
    let temp = `<div class="video-link-card">
                <div class=''> 
                    <label for='validationCustom03' class='form-label'>Title</label> 
                    <input type='text' class='form-control spl input-only' id='other-title' /> 
                </div>
                <div class=''> 
                    <label for='validationCustom03' class='form-label'>URL</label> 
                    <input type='text' class='form-control spl input-only' id='other-url' /> 
                </div>
                <div class="video-action-btn"> 
                    <div class="row"> 
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle menu-icon-form-td-i cursor-pointer" color="green" onclick="addInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle menu-icon-form-td-i cursor-pointer" color="red" id="" onclick="closeInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
                    </div>
                </div>
                </div>`;
    const ico = $(temp);
    parent.append(ico);
    var current = $(e);
    current.parent().remove();
}

const closeInput = e => {
    let current = $(e);
    let closeable =  current.parent().parent().parent();
    closeable.prev().remove();
    closeable.prev().remove();
    closeable.remove();
}

const changeQuestionsTopic = e => {
    
    location.href = baseURL+'/view-questions/'+$(e).val()+'?page=1';

}

const gotoOnlineQuestions = () => {
    let topicid = $('#topicid').val();
    location.href = baseURL+'/online-tests/'+topicid;
}

const gotoAddOnlineQuestions = () => {
    let topicid = $('li.active').attr('data-value');
    alert(baseURL+'/online-tests/'+topicid);
    location.href = baseURL+'/online-tests/'+topicid;
}

const backtoViewQuestions = () => {

    let topicid = $('#topicid').attr('data-topicid');
    location.href = baseURL+'/view-questions/'+topicid;

}

const editQuestion = (e) => {
    let qid = $(e).parent().attr('question-id');
    let topicid = $('#topicid').val();
    location.href = baseURL+'/online-tests/'+topicid+'/'+qid;
}

const changeQuestionStatus = (e) => {
    alert('Implement change status via post');
}

var loadEditQuestion = function () {
 
    let data = $("[data-question]").attr("data-question");
    if (data == 'false' || data == undefined) {
        return false;
    }
    let question = JSON.parse(data);
    
    $('#medium').val(question.mediumid).trigger('chosen:updated');
    $('#standard').val(question.standardid).trigger('chosen:updated');
    $('#subject').val(question.subjectid).trigger('chosen:updated');
    $('#syllabus').val(question.syllabusid).trigger('chosen:updated');
    loadLessonsBySyllabus(document.getElementById('syllabus'), question.lessonid);
    loadTopicsByLessons(document.getElementById('lessons'), question.lessonid, question.topicid);
    try {
        $('#topicid').val(question.topicid).trigger('chosen:updated');
    } catch (e){
        return false;
    }

    $('#questions').val(question.question);
    $('#question-type').val(question.questiontype).trigger('chosen:updated');

    switch (parseInt(question.questiontype)) {
        case 1:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').removeClass('d-none');
            $('#blankanswer').val(question.answer);
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 2:
            $('#mcq').removeClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').removeClass('d-none');
            $('#mcqanswer').val(question.answer).trigger('chosen:updated');
            const arr = question.choice.split('~');
            $('#choice1').val(arr[0]);
            $('#choice2').val(arr[1]);
            $('#choice3').val(arr[2]);
            $('#choice4').val(arr[3]);
            break;
        case 3:
            $('#mcq').addClass('d-none');
            $('#truefalse').removeClass('d-none');
            $('#true-answer').val(question.answer).trigger('chosen:updated');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').addClass('d-none');
            $('#mcqdiv').addClass('d-none');
            break;
        case 4:
            $('#mcq').addClass('d-none');
            $('#truefalse').addClass('d-none');
            $('#fiblanks').addClass('d-none');
            $('#shortdiv').removeClass('d-none');
            $('#shortanswer').val(question.answer);
            $('#mcqdiv').addClass('d-none');
            break;
    }
    // $('#topicid').val(question.topicid).trigger('change');

    $('#marks').val(question.marks);
    $('#_id').val(question.id);
}

const loadTopics = e => {

    let subjId = $(e).val();
    let standardId = $('#standard').val();
    let mediumId = $('#medium').val();
    
    $.ajax({
        url 	: BasURL + 'insight/find-topics-bySubject',
		type 	: 'POST',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            subjId : subjId,
            standardId : standardId,
            mediumId : mediumId,
		},
        encode 	: !0
	}).done( (t) => {
        
        if(t.success){
            let topics =  t.topics;
            $('#topics-div').removeClass('d-none');
            $('#topic-list').empty();
            topics.forEach(element => {
                $('#topic-list').append('<li class="list-group-item" onclick="handleTopicChange(this);" data-value="'+element.id+'">'+element.name+'</li>');
            });
			
		}
		
	}).fail((t) => {
        alert('Error loading Topics');
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
}

const handleTopicChange = e => {
    $('#ques-div').removeClass('d-none');
    retainCurrentSelection();    
    let topicid = $(e).attr('data-value');
    $(e).siblings('li').removeClass('active');
    $(e).addClass('active');
    let url = BasURL + 'insight/find-questions-bytopic/'+topicid ;
    loadQuestionsByAjax(url);
}

const handlePagination = (e) => {

    let url = $(e).attr('data-url');

    retainCurrentSelection();

    loadQuestionsByAjax(url);

}

const retainCurrentSelection = () => {
    /*
        Questions will be cleared from local storage in change standard event
    */
   console.log('retaining...')
    let ques = localStorage.getItem('questions');

    if (ques != null) {
        let storedSet = new Set(JSON.parse(ques));
        $("input[name='question-checkbox']:checked").each(function(){
            storedSet.add(this.value);
        });
        $("input[name='question-checkbox']:not(:checked)").each(function(){
            storedSet.delete(this.value);
        });
        localStorage.setItem('questions',JSON.stringify(Array.from(storedSet)));
    } else {
        let qset = new Set();    
        $("input[name='question-checkbox']:checked").each(function(){
            qset.add(this.value);
        });
        if(qset.size != 0){
            localStorage.setItem('questions',JSON.stringify(Array.from(qset)));
        }
        $('#preview-button').removeClass('d-none');
    }
}

const loadQuestionsByAjax = (url) => {
    
    $.ajax({
        url 	: url,
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val()
		},
        encode 	: !0
	}).done( (t) => {
        if(t.success){
            let questions =  t.questions.data;
            $('#questions-list').empty();
            
            let storedQues = localStorage.getItem('questions');
            let storedQset;
            if (storedQues != null) {
                 storedQset = new Set(JSON.parse(storedQues));
            }

            if(questions.length > 0){
                questions.forEach(element => {
                    let color = '';
                    let isChecked = '';
                    if(element.difficulty == 'Easy'){
                        color = 'bg-warning';
                    } else if(element.difficulty == 'Medium') {
                        color = 'bg-primary';
                    } else {
                        color = 'bg-danger';
                    }
                    
                    if(storedQset != undefined && storedQset.has(element.id.toString())){
                        isChecked = 'checked';
                    }
                    $('#questions-list').append('<div class="form-check"> <input type="checkbox" '+isChecked+' class="form-check-input" name="question-checkbox" id="'+element.id+'"  value="'+element.id+'"> <label for="'+element.id+'">'+element.question+'&emsp;<span class="badge rounded-pill '+color+'">'+element.difficulty+'</span></label> </div><br>');
                });
    
                let unordList = $('<ul class="pagination"> </ul>');
                
                let links = t.questions.links;
                
                links.forEach (element => {
    
                    if(element.url == null){
                        unordList.append('<li class="page-item disabled" > <a class="page-link">'+element.label+'</a> </li>');
                    } else {
                        if (element.active) {
                            unordList.append('<li class="page-item active" > <a class="page-link">'+element.label+'</a> </li>');
                        } else {
                            unordList.append('<li class="page-item"> <a class="page-link" data-url="'+element.url+'" onclick="handlePagination(this)">'+element.label+'</a> </li>');
                        }
                    }
    
                });
                
                let div = $('<div class="col-12 display-flex-space"> </div>');
                let nav = $('<nav></nav>').append(unordList);
                div.append(nav);
                $('#questions-list').append(div);
            } else {
                $('#questions-list').append('<div class="d-flex justify-content-center"><button class="btn glow-on-hover" type="button" onclick="gotoAddOnlineQuestions()">Add New Questions</button></div>');

            }
			$('.form-check').change(function () {
                retainCurrentSelection();
            });
		}
		
	}).fail((t) => {
        alert('Error loading Questions');
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
	})
}

const previewQuestions = () => {

    retainCurrentSelection();

    let qArr = localStorage.getItem('questions');

    $.ajax({
        url 	: BasURL + 'insight/get-preview-questions',
		type 	: 'GET',
		dataType: 'json',
		data 	: {
            _token : $('input[name=_token]').val(),
            qArr : qArr
		},
        encode 	: !0
    }).done((t) => {
        if(t.success){
            let questions =  t.questions;
            $('#modal-question-list').empty();
            questions.forEach(element => { 
                $('#modal-question-list').append('<li class="list-group-item" onclick="highlight(this);" data-value="'+element.id+'"> '+element.question+' </li>');
            });
        } 
    }).fail( (t)=> {
        alert('Error loading Questions Preview');
		if(t.status == '401' || t.status == '419'){
			window.location.href = window.location.href;
		}
    });
}

const highlight = (e) => {
    $(e).siblings('li').removeClass('active');
    $(e).addClass('active');
}

const addUpdateSetQuestions = async() => {
    
        let medium = $('#medium'), standard = $('#standard'), subject = $('#subject'), exam = $('#exam'), questionCount =$('#question-count');
    
        errMsg.addClass('d-none');
        inputOnly.removeClass('err-input-admin');
    
        if(exam.val() == null){	
            exam.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' Exam is required'); 
            return false;
        }
        if(questionCount.val() == ''){	
            questionCount.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' No of Questions is required'); 
            return false;
        }
        if(medium.val() == null){	
            medium.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' Medium is required'); 
            return false;
        }
        if(standard.val() == null){	
            standard.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' Standard is required'); 
            return false;
        }
        if(subject.val() == null){	
            subject.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html(' Subject is required'); 
            return false;
        }
        
        let question_ids = localStorage.getItem('questions');

        if (question_ids == '' || question_ids == null){
            subject.addClass('err-input-admin'); 
            errMsg.removeClass('d-none').html('You have not selected any Questions'); 
            return false;
        } else {
            let count = questionCount.val() - JSON.parse(question_ids).length;
            if(count > 0){
                subject.addClass('err-input-admin');
                errMsg.removeClass('d-none').html(`Please select ${count} more Questions`); 
                return false;
            } else if (count < 0){
                subject.addClass('err-input-admin');
                count *= -1;
                errMsg.removeClass('d-none').html(`You have selected ${count} extra questions. Please unselect some questions.`); 
                return false;
            }
        }
    
        const body = new FormData();
    
        let details = {
            examid            : exam.val(),
            no_of_questions            : questionCount.val(),
            medium_id           : medium.val(),
            standard_id            : standard.val(),
            subject_id            : subject.val(),
            question_ids            : question_ids
        };

        return false;
    
        for(let detail of Object.entries(details)){
    
            let value = detail[1];
            if(detail[1] == '' || detail[1] == undefined) value = null;
            body.append(detail[0], value);      
        }
    
        try{
    
            loaderOpt.removeClass('d-none');
            loaderMsg.html('adding...').removeClass('d-none');
    
            let request = await fetch(`${baseURL}/set-questions/action`, {
                method : 'POST',
                headers : {
                    'X-CSRF-TOKEN': _token
                },
                body
            });
    
            let response = await request.json();
    
            if(response.Status){
                loaderMsg.html('Added Successfully').addClass('d-none');
                loaderOpt.addClass('d-none');
                // refresh page
                location.reload();
    
            }else{
                alert('Something went wrong');
                loaderDisable();
            }
        }catch(err){
            throw err;
        }
        return false;
}

const showhideGuardian = () => {
/**
 * Disabled due to unnecessary function
 */
    let val = $('input[name="parent_guardian"]:checked').val();

    if(val == 1){
        $('#guardian-div').addClass('d-none');
        $('#father-div').removeClass('d-none');
        $('#mother-div').removeClass('d-none');
    } else {
        $('#guardian-div').removeClass('d-none');
        $('#father-div').addClass('d-none');
        $('#mother-div').addClass('d-none');
    }
    
}

const toggleModal = () => {
    $('#myModal').modal('toggle');
}


const AddUpdateStandard = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let standard = $('#standard');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(standard.val() == ''){	
        standard.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Standard');
        standard.focus(); 
        return false;
	}
    
    const body = new FormData();

    let details = {
        
        standard : standard.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/standards/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.data;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();
            let inUpAry = [
                incCount,
                results.clssName,
                results.clssIsStatus? spanActive : spanInactive,
                `<i color="blue" id='column-td-${incCount}' onclick = 'editStandard(this)' data-feather='edit' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('standards', '${results.clssId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }
            $(`.table-datatable tr#${rowId} td:nth(3)`).attr(attrBute)
            $(`.table-datatable tr#${rowId} td:nth(2)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}
const editStandard = current => {
    let cData = $(current).parent().attr('data-json');

    let getId = $(current).attr('id').split('-td-')[1];

    $('.current-row').val(getId)
      
    let pData = JSON.parse(cData);

    $('#medium').val(pData.clssMedium).trigger('chosen:updated');
    
    $('#standard').val(pData.clssName);
    $('#_id').val(pData.clssId);

    hideShowFormEditState(false, true);
}

const AddUpdateSubjects = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let medium = $('#medium'), standard = $('#standard'), subject = $('#subjectName');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(medium.val() == null){	
        medium.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Medium'); 
        return false;
	}
    if(standard.val() == null){	
        standard.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Select the Standard'); 
        return false;
	}
    if(subject.val() == ''){	
        subject.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Subject'); 
        subject.focus();
        return false;
	}
    
    const body = new FormData();

    let details = {
        medium : medium.val(),
        standard : standard.val(),
        subject : subject.val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/subjects/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.data;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();
            let color = 'blue';
            let edit = 'Edit';
            if(results.subjIsStatus == 0){
                color = 'grey';
                edit = editMsg;
                stat = '<span class="badge bg-danger text-bg-success">In-Active</span>';
            }
            let inUpAry = [
                incCount,
                results.subjName,
                results.mmName,
                results.class_names,
                `<img src="${BasURL}${results.subject_logo??''}" alt="${results.subjName}" width="80" height="80">`,
                results.subjIsStatus? spanActive : spanInactive,
                `<i color="${color}"  data-feather='edit' data-toggle="tooltip" title='${editMsg}' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editSubject(${results.subjId}, ${incCount})'></i>
                <i onclick = "return changeStatus('subjects', '${results.subjId}, 'row-${incCount}')" data-feather='power' data-toggle="tooltip" title='Change Status' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){
                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{
                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        showErrorToast('Error in try block of addUpdateSubjects. Check logs')
        console.error(err);
        loaderDisable();
        return false;
    }
    return false;
}
const editSubject = async(subjId, getId) => {

    let status = $(`.table-datatable tr#row-${getId}`).find('td:contains("In-Active")');

   if(status.length == 1) {
    showErrorToast('Cannot Edit In-Active Record.')
    return false;
   }

    const body = new FormData();
    body.append('id', subjId)
    body.append('type', 'subject')

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

    $('.current-row').val(getId)
      
    $('#medium').val(pData.subjMediumId);
    let temp = '['+pData.class_ids+']';
    $('#standard').val(JSON.parse(temp)).trigger('chosen:updated');
    $('#subjectName').val(pData.subjName);
    $('#_id').val(pData.subjId);

    hideShowFormEditState(false, true);
}

const AddUpdateHolidays = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let year = $('#year'), hname = $('#hname'), description = $('#description'), datee = $('#datee'), message = $('#message');

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(year.val() == null){	
        year.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Year is required');
        return false;
	}
    if(hname.val() == ''){	
        hname.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Holiday Name is required'); 
        hname.focus(); 
        return false;
	}
    // if(description.val() == ''){	
    //     description.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Enter the Description is required'); 
    //     description.focus();
    //     return false;
	// }
    if(datee.val() == ''){	
        datee.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Date is required'); 
        datee.focus();
        return false;
	}
    
    // if(message.val() == ''){	
    //     message.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Enter the Message is required'); 
    //     message.focus();
    //     return false;
	// }

    const body = new FormData();
    
    let details = {
        year : year.val(),
        hname : hname.val(),
        description : description.val(),
        datee : datee.val(),
        message : message.val(),
        editId
    };
    
    
    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/holidays/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.data;

            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();

            let inUpAry = [
                incCount,
                results.orhlFinancialYear,
                results.orhlName,
                results.orhlDescription,
                results.orhlDate,
                results.orhlMessage,
                results.orhlIsStatus ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' id='column-td-${incCount}' onclick='editHoliday(${results.orhlId}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i> 
                <i color="red" onclick = "return changeStatus('orgholidays', '${results.orhlId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            let attrBute = { 
                'data-json' : JSON.stringify(results)
             }, rowId;

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            $(`.table-datatable tr#${rowId} td:nth(7)`).attr(attrBute);
            $(`.table-datatable tr#${rowId} td:nth(6)`).addClass('status')
            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable()
        }

    }catch(err){
        throw err;
    }
    return false;
}



const editHoliday = async(holidayId, getId) => {

    const body = new FormData();
    body.append('id', holidayId)
    body.append('type', 'holidays')

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

    $('.current-row').val(getId)
      
    $('#year').val(pData.orhlFinancialYear).trigger('chosen:updated');
    $('#hname').val(pData.orhlName);
    $('#description').val(pData.orhlDescription);
    $('#datee').val(pData.orhlDate);
    $('#message').val(pData.orhlMessage);
    $('#_id').val(pData.orhlId);

    hideShowFormEditState(false, true);
}

const AddUpdateDocuments = async () => {
    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let title = $('#title'),description = $('#description');
    let proofType = $('#file');

    let check=$('#rowlength .resource-one').length;
    
    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    if(title.val() == ''){	
        title.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Title is required'); 
        title.focus();
        return false;
	}
    if(description.val() == ''){	
        description.addClass('err-input-admin'); 
        errMsg.removeClass('d-none').html('Enter the Description is required'); 
        description.focus();
        return false;
	}
    control = document.getElementById('file');
    if(proofType.val() == ''){

        control = document.getElementById('file');

        if(editId == '' && control.files.length == 0){
            errMsg.html('Upload valid file').removeClass('d-none');
            control.focus();
            return false;
        }
    }
    for(i=0; i<check; i++){
        if($('.resource-one').children('input')[i].value ==''){
            errMsg.removeClass('d-none').html('resource fill it'); 
            $('.resource-one').children('input')[i].focus();
            return false; 
        }
        if($('.resource-two').children('input')[i].value==''){
            errMsg.removeClass('d-none').html('url fill it'); 
            $('.resource-two').children('input')[i].focus();
            return false;  
        }
    }   
    
    const body = new FormData();
    let fileValidate = filesValidate();
    
    if(!fileValidate){
        errMsg.html('Provide valid file').removeClass('d-none');
        return false;
    }else{

        if(fileValidate.length > 0){
            let i = 0;   
            for(let file of fileValidate){
                body.append(`files_${i}`, file);
                i++;
                
            }
            body.append('totalFiles', i);
        }
    }
    
    let resourceurl1='';
        for(let i=0; i<check; i++){
            let resource={
                resource:$('.resource-one').children('input')[i].value,
                url:$('.resource-two').children('input')[i].value,
               
            };
           resourceurl1 += JSON.stringify(resource)+',';
           
        }     


    let a=[];
    for(i=0;i<control.files.length;i++){
        a.push(control.files[i]);
    }    
    
    let details = {
        title           : title.val(),
        description     : description.val(),
        resources       : resourceurl1,
        fileurl         : a,
        length          : control.files.length,
        editId
        };
        for(let detail of Object.entries(details)){

            let value = detail[1];
            if(detail[1] == '' || detail[1] == undefined) value = null;
            body.append(detail[0], value);      
        }
    
        try{
    
            loaderOpt.removeClass('d-none');
            loaderMsg.html('adding...').removeClass('d-none');
    
            let request = await fetch(`${baseURL}/documents/action`, {
                method : 'POST',
                headers : {
                    'X-CSRF-TOKEN': _token
                },
                body
            });
    
            let response = await request.json();

            if(response.Status){

                let results = response.data;
    
                let incCount = +rowCount.val();
    
                if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) incCount = $('.current-row').val();
    
                let inUpAry = [
                    incCount,
                    results.docTitle,
                    results.docDescription,
                    results.docDocument,
                    results.docResource,
                    results.docIsStatus ? spanActive : spanInactive,
                    `<i data-feather='edit' id='column-td-${incCount}' onclick='editDocument(this)' class='menu-icon-form-td-i cursor-pointer'></i> 
                    <i onclick = "return changeStatus('documents', '${results.docId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
                ];
    
                let attrBute = { 
                    'data-json' : JSON.stringify(results)
                 }, rowId;
    
                if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){
    
                    rowId = `row-${incCount}`;
                    let currentRow = $(`.table-datatable tr#${rowId}`);
                    table.dataTable().fnUpdate(inUpAry, currentRow[0]);
                }else{
    
                    let newRow = table.dataTable().fnAddData(inUpAry, true);
                    let getRow = table.dataTable().fnGetNodes(newRow);
                    rowId = `row-${incCount}`;
                    $(getRow).attr('id',rowId);
                    rowCount.val(incCount);        
                }
    
                $(`.table-datatable tr#${rowId} td:nth(4)`).attr(attrBute);
                $(`.table-datatable tr#${rowId} td:nth(3)`).addClass('status')
                hideShowFormEditState(true, false)
                loaderDisable();
                feather.replace();
    
            }else{
                alert('Something went wrong');
                loaderDisable();
            }
        }catch(err){
            throw err;
        }
        return false;
}

var counter=2;

const editDocument = current => {

    let cData = $(current).parent().attr("data-json");

    let getId = $(current).attr("id").split("-td-")[1];

    $(".current-row").val(getId);

    let pData = JSON.parse(cData);

    $("#title").val(pData.docTitle);
    $("#description").val(pData.docDescription);
    $("#file").val();

    let preRes1 = [];
    let preUrl1 = [];

    let length = pData.docResource.split("},").length;
    let length1 = pData.docResource.split(",").length;

    if (pData.docResource !== null) {
        for (i = 0; i < length - 1; i++) {
            let resource1 = pData.docResource.split("},");

            let resource2 = resource1[i].split(":");

            let r1 = resource2[1].split('"');

            preRes1.push(r1[1]);
        }
        i = i + 1;
    }

    if (pData.docResource !== null) {
        for (i = 0; i < length1 - 2; i++) {
            let resource1 = pData.docResource.split(",");
            let resource3 = resource1[i + 1].split('"url":"');
            let r2 = resource3[1];
            preUrl1.push(r2);
        }
        i = i + 2;
    }
    let preeurl = [];
    let n = 0;
    while (n < preUrl1.length) {
        let r = preUrl1[n].split('"}');
        preeurl.push(r[0]);
        n += 2;
    }

    if (preRes1.length > 0) {
        for (i = 1; i < preRes1.length; i++) {
            var parent = $("#other-resources");
            const row1 = $("<div class='row' id='rowlength'>");
            const e1 = $(
                "<div class='col-md-5 resource-one'> <label for='validationCustom03' class='form-label'>Title</label> <input type='text' class='form-control spl input-only'id='resource" +
                    counter +
                    "'/> </div>"
            );
            const e2 = $(
                "<div class='col-md-5 resource-two'> <label for='validationCustom03' class='form-label'>URL</label> <input type='url' class='form-control spl input-only' id='url" +
                    counter +
                    "' /> </div>"
            );
            const ico = $(
                '<div class="col-md-2"> <div class="row"> <div class="col-md-6"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle menu-icon-form-td-i cursor-pointer" color="green" id="" onclick="addInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg></div> <div class="col-md-6"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle menu-icon-form-td-i cursor-pointer" color="red" id="" onclick="closeInput(this)"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg></div></div></div>'
            );

            row1.append(e1);
            row1.append(e2);
            row1.append(ico);
            parent.append(row1);

            var current1 = $("#rowlength");

            current1.parent().addClass();
            current1.parent().add();

            counter++;
        }
    }

    let check = preRes1.length;
    for (r = 1; r <= check; r++) {
        $("#resource" + r).val(preRes1[r - 1]);
        $("#url" + r).val(preeurl[r - 1]);
    }

    $("#_id").val(pData.docId);

    hideShowFormEditState(false, true);
}

const addUpdateRooms = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let room_type = $("#room-type"),
        roomName = $("#room-name"),
        maxCap = $("#max-cap"),
        benchCount = $("#benchCount"),
        avlCap = $("#avl-cap");

    errMsg.addClass('d-none');

    inputOnly.removeClass('err-input-admin');

   try { 
    inputValidator(room_type, 'Room Type')
    inputValidator(roomName, 'Room Name')
    inputValidator(maxCap, 'Max Capacity')
    inputValidator(avlCap, 'Available Capacity')
    inputValidator(benchCount, 'Chair/Bench Count')

    if (parseInt(avlCap.val()) > parseInt(maxCap.val())) 
            throw 'Available Capacity cannot be more the Max Capacity'
    } catch (err) {
        errMsg.removeClass('d-none').html(err); 
        return false;
    }

    const body = new FormData();

    let details = {
        room_type           : room_type.val(),
        name                : roomName.val(),
        max                : maxCap.val(),
        available          : avlCap.val(),
        no_of_seats          : benchCount.val(),
        seating_type          : $('input[name=seat-type]:checked').val(),
        bench_capacity          : $('input[name=bench-capacity]:checked').val(),
        editId
    };

    for(let detail of Object.entries(details)){

        let value = detail[1];
        if(detail[1] == '' || detail[1] == undefined) value = null;
        body.append(detail[0], value);      
    }

    try{

        loaderOpt.removeClass('d-none');
        loaderMsg.html('adding...').removeClass('d-none');

        let request = await fetch(`${baseURL}/add-rooms/action`, {
            method : 'POST',
            headers : {
                'X-CSRF-TOKEN': _token
            },
            body
        });

        let response = await request.json();

        if(response.Status){

            let results = response.results;
            let change = '<span class="badge badge-bg text-bg-success">New</span>';
            let incCount = +rowCount.val();

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null) {
                incCount = $('.current-row').val();
                change = '<span class="badge badge-bg2 text-bg-success">Modified</span>';
            }
            let sType = results.seating_type;

            if (results.seating_type == 'Bench'){
                sType = `${results.bench_capacity} Person Bench`;
            }

            let inUpAry = [
                incCount,
                results.room_type_name,
                `${results.room_name} ${change}`,
                sType,
                results.no_of_seats,
                results.max_capacity,
                results.available_capacity,
                results.status ? spanActive : spanInactive,
                `<i color="blue" data-feather='edit' id='column-td-${incCount}' onclick='editRooms(${results.id}, ${incCount})' class='menu-icon-form-td-i cursor-pointer'></i>
                <i color="red" onclick = "return changeStatus('rooms', '${results.id}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
            ];

            if(editId !== 'null' && editId !== undefined && editId !== '' && editId !== null){

                rowId = `row-${incCount}`;
                let currentRow = $(`.table-datatable tr#${rowId}`);
                table.dataTable().fnUpdate(inUpAry, currentRow[0]);
            }else{

                let newRow = table.dataTable().fnAddData(inUpAry, true);
                let getRow = table.dataTable().fnGetNodes(newRow);
                rowId = `row-${incCount}`;
                $(getRow).attr('id',rowId);
                rowCount.val(incCount);        
            }

            hideShowFormEditState(true, false)
            loaderDisable();
            feather.replace();

        }else{
            alert('Something went wrong');
            loaderDisable();
        }
    }catch(err){
        throw err;
    }
    return false;
}

const editRooms = async(room_id, getId) => {

    let status = $(`.table-datatable tr#row-${getId}`).find('td:contains("In-Active")');

   if(status.length == 1) {
    showErrorToast('Cannot Edit In-Active Record.')
    return false;
   }

    const body = new FormData();
    body.append('id', room_id)
    body.append('type', 'room')

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

    $('.current-row').val(getId)
      
    $('#room-type').val(pData.room_type).trigger('chosen:updated');
    $('#room-name').val(pData.room_name);
    $('#max-cap').val(pData.max_capacity);
    $('#avl-cap').val(pData.available_capacity);
    $('#benchCount').val(pData.no_of_seats);
    let seatingType = pData.seating_type;
    if (seatingType == 'Bench'){
        $('#benchCount').siblings('label').text('No of Benches')
        $('#bench-cap').hasClass('d-none')?$('#bench-cap').removeClass('d-none'):""
        $('#bench').prop('checked', true)
        $(`#${pData.bench_capacity}c`).prop('checked', true)
    } else {
        $('#benchCount').siblings('label').text('No of Chairs')
        $('#bench-cap').hasClass('d-none')?"":$('#bench-cap').addClass('d-none')
        $('#chair').prop('checked', true)
    }
    $('#_id').val(pData.id);

    hideShowFormEditState(false, true);
}

const changeSeatType = e => {
let seatType = $(e).val();
$('#benchCount').val('')
    if (seatType === 'Bench') {
        $('#benchCount').siblings('label').text('No of Benches')
        $('#bench-cap').removeClass('d-none')
    } else {
        $('#benchCount').siblings('label').text('No of Chairs')
        $('#bench-cap').addClass('d-none')
    }
}

const calculateMaxCapacity = e => {
    let count = $(e).val();
    let seatType = $("[type=radio][name=seat-type]:checked").val();
    if (seatType === 'Bench') {
        let benchCap = $("[type=radio][name=bench-capacity]:checked").val();
        $("#max-cap").val(benchCap * count);
    } else {
        $("#max-cap").val(count);
    }
};

const changeBenchCapacity = () => {
    
    $('#benchCount').val('')
}