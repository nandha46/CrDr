const viewSeatByRoom = e => {

    let selection = $(e).find(":selected");
    let maxCap = selection.attr('data-maxcap');
    let avlCap = selection.attr('data-avlcap');

    $('#total-seats').val(maxCap);
    $('#available-seats').val(avlCap/3);

    $('#arrangement-div').removeClass('d-none')
    changeSeatingArrangement()
}

const classAllocation = () => {
    let a = $('#classes').val();

    let className = $('.search-choice').first().text();
    let className2 = $('.search-choice').first().next().text();
    let className3 = $('.search-choice').last().text();
    
    $('#center1').empty();
    $('#left2').empty();
    $('#right2').empty();

        switch (parseInt(a.length)) {
            case 1:
                $('#cla1').text('Strength of '+ className);

                $('#mcq1').removeClass('d-none');
                $('#mcq2').addClass('d-none');
                $('#mcq3').addClass('d-none');

                $('#cla4').text('Remaining of '+ className);

                $('#rem1').removeClass('d-none');
                $('#rem2').addClass('d-none');
                $('#rem3').addClass('d-none');

                $('#class1').val(a[0]);
                $('#class4').val(a[0]);
                
                break;
            case 2:
                $('#cla1').text('strength of '+ className);
                $('#cla2').text('strength of '+ className2);
                
                $('#mcq1').removeClass('d-none');
                $('#mcq2').removeClass('d-none');
                $('#mcq3').addClass('d-none');

                $('#cla4').text('Remaining of '+ className);
                $('#cla5').text('Remaining of '+ className2);

                $('#rem1').removeClass('d-none');
                $('#rem2').removeClass('d-none');
                $('#rem3').addClass('d-none');

                $('#class1').empty();
                $('#class1').val(a[0]);
                $('#class4').val(a[0]);

                $('#class2').empty();
                $('#class2').val(a[1]);
                $('#class5').val(a[1]);
                break;
            case 3:

                $('#cla1').text('strength of '+ className);
                $('#cla2').text('strength of '+ className2);
                $('#cla3').text('strength of '+ className3);
               
                $('#mcq1').removeClass('d-none');
                $('#mcq2').removeClass('d-none');
                $('#mcq3').removeClass('d-none');

                $('#cla4').text('Remaining of'+ className);
                $('#cla5').text('Remaining of '+ className2);
                $('#cla6').text('Remaining of '+ className3);

                $('#rem1').removeClass('d-none');
                $('#rem2').removeClass('d-none');
                $('#rem3').removeClass('d-none');

                $('#class1').empty();
                $('#class1').val(a[0]);
                $('#class4').val(a[0]);

                $('#class2').empty();
                $('#class2').val(a[1]);
                $('#class5').val(a[1]);

                $('#class3').empty();
                $('#class3').val(a[2]);
                $('#class6').val(a[2]);
                break;
        }

        $('.search-choice').each((index, e)=> {
            let className = $(e).text()
            let strength = a[index]
            $('#center1').append(`<option value='${strength}'>${className}</option>`);
            $('#left2').append(`<option value='${strength}'>${className}</option>`);
            $('#right2').append(`<option value='${strength}'>${className}</option>`);
        });    
}

const changeSeatingArrangement = () => {

    let arrangement = $('input[name=invididual-split]:checked').val()
    if (arrangement == 1 ){
        $('#class-selection').removeClass('d-none');
        $('#center').removeClass('d-none');
        $('#left').addClass('d-none');
        $('#right').addClass('d-none');
    } else if (arrangement == 2){
        $('#class-selection').removeClass('d-none');
        $('#left').removeClass('d-none');
        $('#center').addClass('d-none');
        $('#right').removeClass('d-none');
    } else {
        $('#class-selection').removeClass('d-none');
        $('#left').removeClass('d-none');
        $('#center').removeClass('d-none');
        $('#right').removeClass('d-none');
    }
    
}

const AddUpdateSeatArrangement = async () => {

    loaderOpt.addClass('d-none');
    loaderMsg.addClass('d-none');

    let editId = $('#_id').val();

    let classes = $('#classes'),
        exam = $("#exam"),
        room = $("#rooms"),
        availableSeats = $("#available-seats"),
        arrangement = $('input[name=invididual-split]:checked').val();

   try {
        inputValidator(exam, 'Exam')
      inputValidator(room, 'Room')
        inputValidator(classes, 'Classes');
       let count = $('#classes').val().length
      if (count > 1){
        $('#individual').prop('disabled')
      }

   } catch (err) {
        errMsg.removeClass('d-none').html(err); 
        return false;
   }

    errMsg.addClass('d-none');
    inputOnly.removeClass('err-input-admin');

    let className1, className2, className3, center, left, right, hRemaining, hRemaining1, hRemaining2, hRemaining3, avl;

    if(arrangement == 1){
        center = $('#center1').val()
        avl = availableSeats.val()
        className2 = $('#center1 option:selected').text()
        hRemaining2 = avl - center
        if(hRemaining2 > 0){
            console.log(hRemaining2, 'row seats left')
        } else if(hRemaining2 < 0) {
            console.log(hRemaining2*-1, 'row seats needed')
        } else {

        }

    } else if (arrangement == 2) {
        left = $('#left2').val()
        right = $('#right2').val()
        left /= 2
        right /= 2
        avl = availableSeats.val()
        className1 = $('#left2 option:selected').text()
        className3 = $('#right2 option:selected').text()
        hRemaining1 = avl - left
        hRemaining3 = avl - right
        hRemaining = hRemaining1+hRemaining3
        if(hRemaining > 0){
            console.log(hRemaining, 'row seats left')
        } else if(hRemaining < 0) {
            console.log(hRemaining*-1, 'row seats needed')
        } else {

        }
    } else {
        left = $('#left2').val()
        center = $('#center1').val()
        right = $('#right2').val()
        avl = availableSeats.val()
        left /= 3
        center /= 3
        right /= 3
        className1 = $('#left2 option:selected').text()
        className2 = $('#center1 option:selected').text()
        className3 = $('#right2 option:selected').text()

        hRemaining1 = avl - left
        hRemaining2 = avl - center
        hRemaining3 = avl - right
        hRemaining = hRemaining1 + hRemaining2 + hRemaining3

        if(hRemaining > 0){
            console.log(hRemaining, 'seats left')
        } else if(hRemaining < 0) {
            console.log(hRemaining*-1, 'seats needed')
        } else {

        }
    }

        console.log(left, className1)
        console.log(center, className2)
        console.log(right, className3)

        return false;
    
    const body = new FormData();

    let details = {
        exam            : exam.val(),
        arrangement     : $('input[name=invididual-split]:checked').val(),
        splitoption     : $('input[name=invididual-split1]:checked').val(),
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

        let request = await fetch(`${baseURL}/hallseats/action`, {
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
                results.hExam,
                results.hTime,
                results.hClasses,
                results.hClass1,
                results.hClass2,
                results.hClass3,
                results.hExam,
                results.hTime,
                results.hRoomNo,
                results.hTotalSeat,
                results.hArrange,
                results.hInvididual,
                results.hLeft,
                results.hRight,
                results.hCenter,
                results.hRemaining1,
                results.hRemaining2,
                results.hRemaining3,
                results.hStatus ? spanActive : spanInactive,
                `<i data-feather='edit' id='column-td-${incCount}' onclick='editHallSeat(this)' class='menu-icon-form-td-i cursor-pointer'></i> 
                <i onclick = "return changeStatus('hallseats', '${results.hId}', 'row-${incCount}')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>`
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
            $(`.table-datatable tr#${rowId} td:nth(5)`).addClass('status')
            //hideShowFormEditState(true, false)
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