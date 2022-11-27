const generateStudentReport = () => {

    let startDate = $('#start-date').val();
    let endDate = $('#end-date').val();
    let standard = $('#standard').val();
    let section = $('#section').val();
    let academicYear = $('#academicYear').val();

    loaderOpt.removeClass('d-none');
    loaderMsg.html('Loading...').removeClass('d-none');
    
    $.ajax({
        url 	: baseURL + '/report/get-student-report',
        type 	: 'GET',
        dataType: 'json',
        data 	: {
            _token : _token,
            startDate: startDate,
            endDate: endDate,
            standard: standard,
            section: section,
            academicYear: academicYear
        },
        encode 	: !0
     
        }).done( t => {
     
         if(t.success){
            let students = t.students
            console.table(students)
            let dTable1 = $('#datatable-buttons')
            dTable1.dataTable().fnClearTable()
            students.forEach((student, index) => {
                let gendername = 'Others'
                if (student.stuGender == 1) {
                    gendername = 'Male'
                } else if (student.stuGender == 2) {
                    gendername = 'Female'
                }
                let inArray = [
                    index+1,
                    `${student.stuFirstName} ${student.stuLastName}`,
                    student.clssName,
                    student.secnSecName,
                    gendername,
                    student.stuclAcademicYear,
                    '<i data-feather="award" color="#00bbf9"></i>',
                    student.olName,
                    student.condOfficialNumber,
                    student.stuIsStatus?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>'
                ]
               let newRow = dTable1.dataTable().fnAddData(inArray, true)
               let cell = dTable1.fnGetNodes(newRow[0])
               $(cell.cells[6]).attr('data-stuid',student.stuUserId)
               $(cell.cells[6]).attr('onclick','getPerformanceReport2(this)')
            })
            loaderDisable();
         }
        }).fail( t => {
            console.error('error loading report');
            if(t.status == '401' || t.status == '419'){
                window.location.href = window.location.href;
            }
           })
}

const getPerformanceReport = () => {
    let stuId = $('#student-id').val();
    if (stuId == ''){
        alert('Please Enter Student Id');
        return false;
    }
    window.location.href = baseURL+'/get-performance-reports/'+stuId;
}

const getPerformanceReport2 = (e) => {
    let stuId = $(e).attr('data-stuid');
    if (stuId == ''){
        return false;
    }
    window.location.href = baseURL+'/get-performance-reports/'+stuId;
}

const generateExamReport = () => {

    loaderOpt.removeClass('d-none');
    loaderMsg.html('Loading...').removeClass('d-none');

    let startDate = $('#start-date').val();
    let endDate = $('#end-date').val();
    let standard = $('#standard').val();
    let section = $('#section').val();
    let academicYear = $('#academicYear').val();
    
    $.ajax({
        url 	: baseURL + '/report/get-exam-report',
        type 	: 'GET',
        dataType: 'json',
        data 	: {
            _token : _token,
            startDate: startDate,
            endDate: endDate,
            standard: standard,
            section: section,
            academicYear: academicYear
        },
        encode 	: !0
     
        }).done( t => {
     
         if(t.success){
            let students = t.examPerformance
            console.table(students)
            let dTable1 = $('#examreport3')
            dTable1.dataTable().fnClearTable()
            students.forEach((student, index) => {
                let inArray = [
                    index+1,
                    student.name,
                    `${student.stuFirstName} ${student.stuLastName}`,
                    student.clssName,
                    student.secnSecName,
                    student.stuclAcademicYear,
                ]
               let newRow = dTable1.dataTable().fnAddData(inArray, true)
            })
            loaderDisable();
         }
        }).fail( t => {
            console.error('error loading report');
            if(t.status == '401' || t.status == '419'){
                window.location.href = window.location.href;
            }
           })
}
const generatePerformanceReport = () => {

    let startDate = $('#start-date2').val();
    let endDate = $('#end-date2').val();
    let standard = $('#standard2').val();
    let section = $('#section2').val();
    let academicYear = $('#academicYear2').val();

    loaderOpt.removeClass('d-none');
    loaderMsg.html('Loading...').removeClass('d-none');
    
    $.ajax({
        url 	: baseURL + '/report/get-class-performance-report',
        type 	: 'GET',
        dataType: 'json',
        data 	: {
            _token : _token,
            startDate: startDate,
            endDate: endDate,
            standard: standard,
            section: section,
            academicYear: academicYear
        },
        encode 	: !0
     
        }).done( t => {
     
         if(t.success){
            let students = t.allPerformance
            console.table(students)
            let dTable1 = $('#examreport4')
            dTable1.dataTable().fnClearTable()
            students.forEach((student, index) => {
                let inArray = [
                    index+1,
                    student.name,
                    `${student.stuFirstName} ${student.stuLastName}`,
                    student.clssName,
                    student.secnSecName,
                    student.maxmarks,
                    student.attemptNo,
                ]
               let newRow = dTable1.dataTable().fnAddData(inArray, true)
            })
            loaderDisable();
         }

        }).fail( t => {
            console.error('error loading report');
            if(t.status == '401' || t.status == '419'){
                window.location.href = window.location.href;
            }
           })
}