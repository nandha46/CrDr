const addStudentsCSV = () => {
    
    d3.tsv(`${BasURL}/storage/seed/Students.tsv`, (d)=>{
        
        let editId = 'null';

    try{

        $.ajax({
            url 	: baseURL + '/students/upload',
            type 	: 'POST',
            async: false,
            dataType: 'json',
            data 	: {
                _token : _token,
                firstName : d.firstname,
                lastName : d.lastname,
                gender : d.gender,
                dateOfBirth: null,
                fathername : d.fathername,
                mothername : d.mothername,
                guardianname : null,
                pMobile : d.primarymobile,
                sMobile : d.secondarymobile,
                email : null,
                address : d.Address,
                city : 'Chennai',
                state : 24,
                pincode : 600097,
                organization : 1,
                standard : d.std,
                section : 1,
                academicYear : '2022-2023',
            },
            encode 	: !0
        }).done(t=> {
            if(t.Status){
                console.log('uploaded successfully.')
            }
        }).fail(t=> {
            console.error('upload failed')
        });

    }catch(err){
        throw err;
    }
    })
}

const addTeachersCSV = () => {

    d3.tsv(`${BasURL}/storage/seed/Teachers.tsv`, (d)=>{
        
        let editId = 'null';

    try{

        $.ajax({
            url 	: baseURL + '/teachers/upload',
            type 	: 'POST',
            async: false,
            dataType: 'json',
            data 	: {
                _token : _token,
                firstName : d.firstname,
                lastName : d.lastname,
                gender : d.gender,
                dateOfBirth: new Date(d.dateofbirth).toISOString(),
                parent_guardian : 1,
                fathername : d.fathername,
                mothername : d.mothername,
                guardianname : d.Guardianname,
                pMobile : d.primarymobile,
                sMobile : d.secondarymobile,
                email : d.Email,
                address : d.Address,
                city : d.city,
                state : 24,
                pincode : d.pincode,
                organization : 1,
                yrOfExp : d.experience,
                designation : d.Designation,
                password : d.primarymobile,
                editId
            },
            encode 	: !0
        }).done(t=> {
            if(t.Status){
                console.log('uploaded successfully.')
            }
        }).fail(t=> {
            console.error('upload failed')
        });

    }catch(err){
        throw err;
    }
    })
}

const addLessonsCSV = () => {
    
    d3.tsv(`${BasURL}/storage/seed/Lessons.tsv`, (d)=>{

    try{

        $.ajax({
            url 	: baseURL + '/lessons/upload',
            type 	: 'POST',
            async: false,
            dataType: 'json',
            data 	: {
                _token : _token,
                firstName : d.firstname,
                lastName : d.lastname,
                gender : d.gender,
                dateOfBirth: new Date(d.dateofbirth).toISOString(),
                parent_guardian : 1,
                fathername : d.fathername,
                mothername : d.mothername,
                guardianname : d.Guardianname,
                pMobile : d.primarymobile,
                sMobile : d.secondarymobile,
                email : d.Email,
                address : d.Address,
                city : d.city,
                state : 24,
                pincode : d.pincode,
                organization : 1,
                yrOfExp : d.experience,
                designation : d.Designation,
                password : d.primarymobile,
            },
            encode 	: !0
        }).done(t=> {
            if(t.Status){
                console.log('uploaded successfully.')
            }
        }).fail(t=> {
            console.error('upload failed')
        });

    }catch(err){
        throw err;
    }
    })
}