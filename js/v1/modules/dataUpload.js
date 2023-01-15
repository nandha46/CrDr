const uploadCompanyZip = () => {
    let zip = $('#file0').val();

    if (zip == ''){
        alert('Choose file')
        return false;
    }

    return true;

}