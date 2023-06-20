const uploadCompanyZip = () => {
    let inputFile = $('#file0')
    let zip = inputFile.val();

    if (zip == ''){
        alert('Please Choose the backup file.')
        return false;
    }
    return true;

}