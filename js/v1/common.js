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

    // Control date picker range of Daybook
    if ($('.daybook-date-input').length != 0) {
        let minDate = $('#fromDate').data('fromdate');
        let maxDate = $('#fromDate').data('todate');
        $('.daybook-date-input').datepicker({
            dateFormat : 'yy-mm-dd',
            minDate : new Date(minDate),
            maxDate : new Date(maxDate),
            changeMonth: true,
            changeYear: true,
        });
    }

   $(".chosen-select").chosen({width:"90%",disable_search_threshold: 10,inherit_select_classes:true});
   
   $(".chosen-class-select").chosen({disable_search_threshold: 10, inherit_select_classes:true, max_selected_options: 3});

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

    if (text === undefined){
        return;
    }

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
        let request = await fetch(`${baseURL}check-duplicate`, {
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

    if(userType == '3') $('.prvl-menu').removeClass('d-none');
}

const changeStatus = async (type, id, rowId) => {

    console.log('rowid:', rowId)

    if(!confirm('Do you want to change status?')) return false;
    
    try{

        const body = new FormData();

        body.append('id', id);
        body.append('type', type);

        let request = await fetch(`${baseURL}status`, {
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

const addUpdateUsers = async() => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val(), userType = $('#user-type');

    let firstName = $('#firstname'), lastName = $('#lastname'), pMobile = $('#p-mobile'), 
                        sMobile = $('#s-mobile'), email = $('#email'), password = $('#password');

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

    // if(editId == '' && password.val() == ''){
    //     password.addClass('err-input-admin'); 
    //     errMsg.removeClass('d-none').html('Password is required');
    //     password.focus();
    //     return false;
    // }

    const body = new FormData();

    let details = {
        userType : userType.val(),
        firstName : firstName.val(),
        lastName : lastName.val(),
        pMobile : pMobile.val(),
        sMobile : sMobile.val(),
        email : email.val(),
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

        let request = await fetch(`${baseURL}users/action`, {
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

           let usertypes = ['','SuperAdmin', 'Admin', 'Staff'];

            let usertypeName = 'Admin';

            // eagage

            let inUpAry = [
                incCount,
                `${results.firstname} ${results.lastname} ${change}`,
                results.primary_mobile,
                results.primary_mobile,
                usertypes[results.usertype],
                results.userstatus ? spanActive:spanInactive,
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
        { id :  3, name : 'STAFF'},
    ];

    $('.current-row').val(getId)
      
    const body = new FormData();
    body.append('id', userid)
    body.append('type', 'user')

    let request = await fetch(baseURL + 'edit/common',{
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

    $('#user-type').val(pData.usertype);
    $('#firstname').val(pData.firstname);
    $('#lastname').val(pData.lastname);
    $('#p-mobile').val(pData.primary_mobile);
    $('#s-mobile').val(pData.secondary_mobile == 'null'? '' : pData.secondary_mobile);
    $('#email').val(pData.email == 'null'? '' : pData.email);
    $('#_id').val(pData.userid);

    if(pData.usertyperesult != 'SUPER-ADMIN' || pData.usertyperesult != 'ADMIN'){

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

        let request = await fetch(`${baseURL}events/action`, {
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

    let request = await fetch(baseURL + 'edit/common',{
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

        let request = await fetch(`${baseURL}blogs/action`, {
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

    let request = await fetch(baseURL + 'edit/common',{
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

        let request = await fetch(`${baseURL}announcements/action`, {
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

    let request = await fetch(baseURL + 'edit/common',{
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

        let request = await fetch(`${baseURL}press-releases/action`, {
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

    let request = await fetch(baseURL + 'edit/common',{
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

const setStockEntries = () => {
    let stockNeeded = $('#stockNeeded').val();
    if (stockNeeded == '0'){
        $('#stockNeeded').val(1);
        $('#stockButton').addClass('btn-green')
    } else {
        $('#stockNeeded').val(0);
        $('#stockButton').removeClass('btn-green')
    }
}

const loadCompanyYear = async (companyName, i) => {
    $('.list-group-item-action').removeClass('active')
    $('#'+i).addClass('active');

    $('#company-submit-button').addClass('d-none')

    let body = new FormData();
    body.append('companyName', companyName);

    try {
        enableLoader();
        let request = await fetch(`${baseURL}load-company-year`, {
        method : 'POST',
        headers : {
            'X-CSRF-TOKEN' : _token
        },
        body
       });
       let response = await request.json();

       if (response.status) {
            let years = response.years;
            let listTag = $('#years-list');
            
            $('.removable').remove();

            years.forEach( year => {
                let listHtml = `<a href="#" class="list-group-item list-group-item-action removable" data-selected="${year.id}" onclick="selectYear(this)">20${year.CompanyYear}</a>`;
                listTag.append(listHtml);
            });
            disableLoader();
       } else {
            alert('No company years found')
       }

    } catch(err) {
        alert('Something went wrong please try again')
        console.error(err);
     }
}

const selectYear = e => {
    $('.removable').removeClass('active');
    $(e).addClass('active');
    $('#company-submit-button').removeClass('d-none');
}

const submitCompany = async () => {
   let selectedCompany = $('.removable.active').data('selected');

   let body = new FormData();
    body.append('companyId', selectedCompany);

    try {
        enableLoader();
        let request = await fetch(`${baseURL}select-company`, {
        method : 'POST',
        headers : {
            'X-CSRF-TOKEN' : _token
        },
        body
       });
       let response = await request.json();

       if (response.status) {
            disableLoader();
            location.reload();
       } else {
            alert('Something went wrong')
       }

    } catch(err) {
        alert('Something went wrong please try again')
        console.error(err);
     }

}

const enableLoader = () => {
    loaderOpt.removeClass('d-none');
    loaderMsg.removeClass('d-none');
}

const disableLoader = () => {
    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');
}

const submitDaybook = async () => {

    let fromDate = new Date($('#fromDate').val());
    let toDate = new Date($('#toDate').val());

    let difference = toDate - fromDate;
    if (difference < 0) {
        showErrorToast('End Date cannot be later than start date.');
        return false;
    }

    return true;

//    let body = new FormData();
//     body.append('fromDate', $('#fromDate').val());
//     body.append('toDate', $('#toDate').val());

//     try {
//         enableLoader();
//         let request = await fetch(`${baseURL}daybook-report`, {
//         method : 'POST',
//         headers : {
//             'X-CSRF-TOKEN' : _token
//         },
//         body
//        });
//        let response = await request.json();

//        if (response.status) {
//             disableLoader();
//             location.reload();
//        } else {
//             alert('Something went wrong')
//        }

//     } catch(err) {
//         alert('Something went wrong please try again')
//         console.error(err);
//      }

}
