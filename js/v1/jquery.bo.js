
$tknVl 		= $('input[name=_token]').val();
$PopMsg 	= $('.pop-msg');
$UsrPop 	= $('.usr-pop');
$PreLdr 	= $('.preloader');
$LdrTxt 	= $('#ldr-txt');
$StrBtn 	= $('#str-btn');
$InCls 		= $('.input-class');
$DtTbl 		= $('.e-br');
$TblCnt 	= $('#table-row-cnt');
$CanPop 	= $('.can-pop');
$AddOpt 	= $('.added-opt');
$AddEditOpt = $('.add-edit-opt');
$ActnGng 	= $('.actn-gng');
$ActnSuc 	= $('#actn-suc');
$ActnCanOrdr= $('#actn-can-ordr');
$ActnGngHpn = $('#actn-gng-hpn');
$itmDt 		= $('.item_details'); 
$OrdrItmCnt	= $('#order-items-cnt'); 
itmInf 		= $('#itmInf').val();
BrId 		= $('#BrId').val();

CRT 		= $("#crt");
CRTTiTle 	= $("#crt-ttle");
Prcd2Ordr 	= $("#prc-ordr");
CRTChrg 	= $("#crt-chrg");
Chrg 		= $("#Chrg").val();
Res 		= $("#BrIn").val();



AddCategory = function(){

	$EBrIn	= $('#e-br-in');
	$ErrF 	= $('.bo-frm-err');

	$ErrF.addClass('hide');

	if($EBrIn.val() != ''){

		UpdateCategory($EBrIn.val());
		return false;
	}

	$Err = 0, $brId = $('#brId'), $CatNm = $('#CatNm');

	if($brId.val() == '' || $CatNm.val() == ''){

		$Err = 1;
		$ErrF.removeClass('hide');
	}	

	if(!$Err == 1){	

		$LdrTxt.html('Category Adding');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');


		$Category = {
			brId 			: $brId.val(),
			CatNm 			: $CatNm.val(),			
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'cat-add',
			type 	: 'POST',
            dataType: 'json',
            data 	: $Category,
            encode 	: !0
        }).done(function(t){

        	if(t.Success){       		 

                $Msg = 'Category Added Successfully'; 

                $CatInfo 	= t.CatInfo;       	
				$ActRw 		= parseInt($TblCnt.val());
				$ActRw 		= $ActRw+1;
				$AdDtTbl 	= $DtTbl.dataTable().fnAddData([
				$ActRw,
				$CatInfo.crName,
				$CatInfo.beName,														 
				$CatInfo.ceIsStatus == 1 ? 'Active' : 'In-active',
					 '<i class="fa fa-pencil-square-o cursor-pointer" aria-hidden="true" id="e-br-in-'+$CatInfo.cbCatId+'" data-value=\''+JSON.stringify($CatInfo)+'\' onclick="EditStore(this)"></i>',
					 '<i class="fa fa-power-off chng-sts cursor-pointer" aria-hidden="true" data-row='
					 +$ActRw+' data-act="str" data-btn="Confirm" data-html="Are you sure to change the store status?" data="'+$CatInfo.cbCatId+'" data-td-act="4"></i>'
				]);

				$AdDtTblRw = $DtTbl.dataTable().fnGetNodes($AdDtTbl);

				$($AdDtTblRw).attr('id','row-'+($ActRw+1)); 

        	}else{

        		$Msg = t.Msg; 
        	}

        	$PreLdr.addClass('hide');
        	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
            $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
            $UsrPop.removeClass('hide');                
            $ActnSuc.removeClass('hide');  

        	$PopMsg.html($Msg);        		

        }).fail(function(t) {
        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');
        })

	}
		return false;	
};

AddSubCategory = function(){

	$EBrIn = $('#e-br-in');	

	if($EBrIn.val() != ''){

		UpdateSubCategory($EBrIn.val());
		return false;
	}

	$Err = 0, $brId = $('#brId'), $CatId = $('#CatId'),$SubCatNm=$('#SubCatNm');
	if($brId.val() == ''){

		$Err = 1;
		$brId.next().next().css('border-bottom','0.0625rem solid #b93838').next().addClass('show').removeClass('hide');
	}
	if($CatId.val()	== ''){

		$CatId.next().next().css('border-bottom','0.0625rem solid #999').next().addClass('hide').removeClass('show');
	}
	if($SubCatNm.val()==''){

		$SubCatNm.next().next().css('border-bottom','0.0625rem solid #999').next().addClass('hide').removeClass('show');
	}

	if(!$Err == 1){	

		$LdrTxt.html('SubCategory Adding');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$SubCategory = {
			brId 			: $brId.val(),
			CatId 			: $CatId.val(),	
			SubCatNm 		: $SubCatNm.val(),		
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'catsub-add',		
			type 	: 'POST',
            dataType: 'json',
            data 	: $SubCategory,
            encode 	: !0
        }).done(function(t){  

        		$SubCatInfo 	= t.SubCatInfo;       	
				$ActRw 		= parseInt($TblCnt.val());
				$ActRw 		= $ActRw+1;
				$AdDtTbl 	= $DtTbl.dataTable().fnAddData([
					 $ActRw,
					 $SubCatInfo.vcCatSubName,
					 $SubCatInfo.crName,
					 												 
					 $SubCatInfo.isActive == 1 ? 'Active' : 'In-active',
					 '<i class="fa fa-pencil-square-o cursor-pointer" aria-hidden="true" id="e-br-in-'+$SubCatInfo.cbId+'" data-value=\''+JSON.stringify($SubCatInfo)+'\' onclick="EditStore(this)"></i>',
					 '<i class="fa fa-power-off chng-sts cursor-pointer" aria-hidden="true" data-row='
					 +$ActRw+' data-act="str" data-btn="Confirm" data-html="Are you sure to change the store status?" data="'+$SubCatInfo.cbId+'" data-td-act="4"></i>'
					]);

				$AdDtTblRw = $DtTbl.dataTable().fnGetNodes($AdDtTbl);

				$($AdDtTblRw).attr('id','row-'+($ActRw+1)); 


        		$PreLdr.addClass('hide');
        		$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');         	
        	 	$PopMsg.html('SubCategory Added Successfully'); 

        }).fail(function(t) {
        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');
        })

	}
	return false;	
};	

AddCharges = function(){

 	$EBrIn = $('#e-br-in');	

	if($EBrIn.val() != ''){

		UpdateCharges($EBrIn.val());
		return false;
	}

	$Err = 0, $brId = $('#brId'), $brNm = $('#brNm'),$brAddr=$('#brAddr'),$BestSel=$('#BestSel');
	if($brId.val() == 0){

		$Err = 1;
		$brId.next().next().css('border-bottom','0.0625rem solid #b93838').next().addClass('show').removeClass('hide');
	}

	if(!$Err == 1){	

		$LdrTxt.html('Charges Adding');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$BestSel=$('input[name=BestSel]:checked').val();

		$Charges = {
			brId 			: $brId.val(),
			brNm 			: $brNm.val(),	/*ChargesName*/
			brAddr 			: $brAddr.val(), /*ChargesPercent*/
			BestSel 		: $BestSel,	/*Inclusive Exclusive Boolean*/	
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'charges-add',		
			type 	: 'POST',
            dataType: 'json',
            data 	: $Charges,
            encode 	: !0
        }).done(function(t){ 

        		$bol = 'No';
        		$Chrdata 	= t.Chrdata;
        		if($Chrdata.bolisInclusiveProduct==1){
					 	$bol='Yes';
					}
					
        		
				$ActRw 		= parseInt($TblCnt.val());
				$ActRw 		= $ActRw+1;
				$AdDtTbl 	= $DtTbl.dataTable().fnAddData([
					 $ActRw,
					 $Chrdata.vcChargesName,
					 $Chrdata.chargeInPercentage,
					 $bol,
					 $Chrdata.beName,					 
					 $Chrdata.isActive == 1 ? 'Active' : 'In-active',
					 '<i class="fa fa-pencil-square-o cursor-pointer" aria-hidden="true" id="e-br-in-'+$Chrdata.intChargesId+'" data-value=\''+JSON.stringify($Chrdata)+'\' onclick="EditStore(this)"></i>',
					 '<i class="fa fa-power-off chng-sts cursor-pointer" aria-hidden="true" data-row='
					 +$ActRw+' data-act="str" data-btn="Confirm" data-html="Are you sure to change the store status?" data="'+$Chrdata.intChargesId+'" data-td-act="4"></i>'
					]);

				$AdDtTblRw = $DtTbl.dataTable().fnGetNodes($AdDtTbl);

				$($AdDtTblRw).attr('id','row-'+($ActRw+1)); 

        		$PreLdr.addClass('hide');
        		$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');         	
        	 	$PopMsg.html('Charges Added Successfully'); 

        }).fail(function(t) {
        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');
        })
	}
	
	return false;
 };


AddItem = function(){

	$EBrIn = $('#e-br-in');	
	if($EBrIn.val() != ''){	

		UpdateItem($EBrIn.val());
		return false;
	}

	$Err = 0, $brId = $('#brId'), $CatId = $('#CatId'),$SubCatId=$('#SubCatId'),$itmNm=$('#itmNm'),$itmPrc=$('#itmPrc'),$AvlAtck=$('#AvlAtck');
	if($brId.val() == 0){

		$Err = 1;
		$brId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');
	}
	
	if($CatId.val()	== 0){

		$Err = 1;
		$CatId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');;
		
	}
	
	if($SubCatId.val()==0){

		$Err = 1;
		$SubCatId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');;
	
	}

	if(!$Err == 1){	

		$LdrTxt.html('Item Adding');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');
		$ItmType=$('input[name=ItmType]:checked').val();
		$Portion=$('input[name=Portion]:checked').val();
	
		$Item = {
			brId 			: $brId.val(),
			CatId 			: $CatId.val(),	
			SubCatId 		: $SubCatId.val(),	
			itmNm 			: $itmNm.val(),	
			itmPrc 			: $itmPrc.val(),		
			AvlAtck 		: $AvlAtck.val(),
			ItmType 		: $ItmType,	
			Portion 		: $Portion,				
			_token 			: $tknVl
		};

		
		$.ajax({
			url 	: BaseURL + 'item-add',		
			type 	: 'POST',
            dataType: 'json',
            data 	: $Item,
            encode 	: !0
        }).done(function(t){  


        		$ItemInfo = t.ItemInfo;       	
				$ActRw 		= parseInt($TblCnt.val());
				$ActRw 		= $ActRw+1;
				$AdDtTbl 	= $DtTbl.dataTable().fnAddData([
					 $ActRw,
					 $ItemInfo.vcItemName,
					 $ItemInfo.intPriceLvl1,
					 $ItemInfo.vcCatSubName,					 												 
					 $ItemInfo.isActive == 1 ? 'Active' : 'In-active',
					 '<i class="fa fa-pencil-square-o cursor-pointer" aria-hidden="true" id="e-br-in-'+$ItemInfo.cbId+'" data-value=\''+JSON.stringify($ItemInfo)+'\' onclick="EditStore(this)"></i>',
					 '<i class="fa fa-power-off chng-sts cursor-pointer" aria-hidden="true" data-row='
					 +$ActRw+' data-act="str" data-btn="Confirm" data-html="Are you sure to change the store status?" data="'+$ItemInfo.cbId+'" data-td-act="4"></i>'
					]);

				$AdDtTblRw = $DtTbl.dataTable().fnGetNodes($AdDtTbl);

				$($AdDtTblRw).attr('id','row-'+($ActRw+1)); 

        		$PreLdr.addClass('hide');
        		$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');         	
        	 	$PopMsg.html('Item Added Successfully'); 

        }).fail(function(t) {
        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');
        })

	}
	return false;	
};	


EditCategory = function(t){

	$ErbId = $('#e-br-in'),$CatNm = $('#CatNm'),$brId = $('#brId');
	$InCls.val('');

	$CatInfo = JSON.parse($(t).attr('data-value'));
	
	$ErbId.val($CatInfo.ceId);	
	$CatNm.val($CatInfo.ceMastrId).trigger('chosen:updated'); 
	$brId.val($CatInfo.ceBrId).trigger('chosen:updated');
	
	$AddEditOpt.addClass('show').slideDown(450).removeClass('hide');  
    $AddOpt.addClass('fa-minus').removeClass('fa-plus');
    $StrBtn.html('Update');
    $(window).scrollTop(0);    
}


EditSubCategory = function(t){
	
	$ErbId = $('#e-br-in'),$CatId = $('#CatId'),$brId = $('#brId'),$SubCatNm=$('#SubCatNm');
	$InCls.val('');

	$SubCatInfo = JSON.parse($(t).attr('data-value'));
	$brId.val($SubCatInfo.beId).trigger('change'),			
	$CatId .val($SubCatInfo.cbCatId).change(), 	
	$SubCatNm.val($SubCatInfo.vcCatSubName),
	$ErbId.val($SubCatInfo.cbId),	
	
	$AddEditOpt.addClass('show').slideDown(450).removeClass('hide');  
    $AddOpt.addClass('fa-minus').removeClass('fa-plus');
    $StrBtn.html('Update');

    
    $(window).scrollTop(0);    

}

EditCharges = function(t){

	$ErbId = $('#e-br-in'),$brId = $('#brId'), $brNm = $('#brNm'),$brAddr=$('#brAddr');
	$InCls.val('');

	$ChargesInfo = JSON.parse($(t).attr('data-value'));
	$brId.val($ChargesInfo.beId).trigger('change'),			
	$brNm.val($ChargesInfo.vcChargesName),
	$brAddr.val($ChargesInfo.chargeInPercentage),
	$ErbId.val($ChargesInfo.intChargesId),	
	$('input:radio[name=BestSel][value='+$ChargesInfo.bolisInclusiveProduct+']').prop('checked', true);

	$AddEditOpt.addClass('show').slideDown(450).removeClass('hide');  
    $AddOpt.addClass('fa-minus').removeClass('fa-plus');
    $StrBtn.html('Update');
    $(window).scrollTop(0);   
}

AddStore = function(){

	$EBrIn = $('#e-br-in'), $ErrF = $('.bo-frm-err');
	$ErrF.addClass('hide');

	if($EBrIn.val() != ''){

		UpdateStore($EBrIn.val());
		return false;
	}

	$Err = 0, $brNm = $('#brNm'), $brAddr = $('#brAddr'), $City = $('#City'), $Pincode = $('#Pincode'), $brNo = $('#brNo'), $brEmail = $('#brEmail'), $OpenTm = $('#OpenTm'), $ClsTm = $('#ClsTm'), $MinDelvTm = $('#MinDelvTm'), $MinOrdrAmt = $('#MinOrdrAmt'), $MinFreeOrdrAmt = $('#MinFreeOrdrAmt'), $MaxDelvKMRg = $('#MaxDelvKMRg'), $FreeDelvKMRg = $('#FreeDelvKMRg'), $PerKmCharge = $('#PerKmCharge'), $BestSel = $('#BestSel');

	if($brNm.val() == '' || $brAddr.val() == '' || $City.val() == '' || $Pincode.val() == '' ||  $brNo.val() == '' || $brEmail.val() == '' || $OpenTm.val() == '' || $ClsTm.val() == '' || $MinOrdrAmt.val() == '' ||  $MinDelvTm.val() == '' || $MaxDelvKMRg.val() == '' || $FreeDelvKMRg.val() == '' ||  $MinFreeOrdrAmt.val() == '' || $PerKmCharge.val() == ''){

		$Err = 1;
		$ErrF.removeClass('hide');	
	}
	
	$BestSelOpt = 0;

	if($BestSel.hasClass('hover')){

		$BestSelOpt = 1;
	}


	if(!$Err == 1){	

		$LdrTxt.html('Store Adding');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$Stores = {
			brNm 			: $brNm.val(),
			brAddr 			: $brAddr.val(),
			city 			: $City.val(),
			pincode 		: $Pincode.val(),
			brNo 			: $brNo.val(),
			brEmail 		: $brEmail.val(),
			OpenTm 			: $OpenTm.val(),
			ClsTm 			: $ClsTm.val(),
			MinOrdrAmt 		: $MinOrdrAmt.val(),
			MinDelvTm 		: $MinDelvTm.val(),
			MaxDelvKMRg 	: $MaxDelvKMRg.val(),
			FreeDelvKMRg 	: $FreeDelvKMRg.val(),
			MinFreeOrdrAmt 	: $MinFreeOrdrAmt.val(),
			PerKmCharge 	: $PerKmCharge.val(),
			BestSel 		: $BestSelOpt,
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'store-add',
			type 	: 'POST',
            dataType: 'json',
            data 	: $Stores,
            encode 	: !0
        }).done(function(t) {

			$PreLdr.addClass('hide');

			if(t.Success){

				$BrIn 		= t.BrIn;	
				$ActRw 		= parseInt($TblCnt.val());
				$ActRw 		= $ActRw+1;
				$AdDtTbl 	= $DtTbl.dataTable().fnAddData([
					 $ActRw,
					 $BrIn.beName,
					 $BrIn.beAddress,
					 $BrIn.beContactNo,					 
					 $BrIn.beIsStatus == 1 ? 'Active' : 'In-active',
					 '<i class="fa fa-pencil-square-o cursor-pointer" aria-hidden="true" id="e-br-in-'+$BrIn.beId+'" data-value=\''+JSON.stringify($BrIn)+'\' onclick="EditStore(this)"></i>',
					 '<i class="fa fa-power-off chng-sts cursor-pointer" aria-hidden="true" data-row='
					 +$ActRw+' data-act="str" data-btn="Confirm" data-html="Are you sure to change the store status?" data="'+$BrIn.beId+'" data-td-act="4"></i>'
					]);

				$AdDtTblRw = $DtTbl.dataTable().fnGetNodes($AdDtTbl);

				$($AdDtTblRw).attr('id','row-'+($ActRw+1));

				// $TblCnt
				$StrBtn.html('Add')
            	$InCls.val('')
             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('Store Added Successfully');                
			}           
            // console.clear()
        }).fail(function(t) {
        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');
        })
	}

	return false;	
};

EditStore = function(t){

	$ErbId = $('#e-br-in'), $brNm = $('#brNm'), $brAddr = $('#brAddr'), $City = $('#City'), $Pincode = $('#Pincode'), $brNo = $('#brNo'), $brEmail = $('#brEmail'), $OpenTm = $('#OpenTm'), $ClsTm = $('#ClsTm'), $MinOrdrAmt = $('#MinOrdrAmt'), $MinDelvTm = $('#MinDelvTm'), $MaxDelvKMRg = $('#MaxDelvKMRg'), $FreeDelvKMRg = $('#FreeDelvKMRg'), $MinFreeOrdrAmt = $('#MinFreeOrdrAmt'), $BestSel = $('#BestSel');	

	$InCls.val('');

	$BrIn = JSON.parse($(t).attr('data-value'));

	$ErbId.val($BrIn.beId), 
	$brNm.val($BrIn.beName), 
	$brAddr.val($BrIn.beAddress),
	$City.val($BrIn.beCity),
	$Pincode.val($BrIn.bePincode),
	$brNo.val($BrIn.beContactNo),
	$brEmail.val($BrIn.beEmail),
	$OpenTm.val($BrIn.dgOpenTime),
	$ClsTm.val($BrIn.dgCloseTime),
	$MinOrdrAmt.val($BrIn.dgMinOrderPrice),
	$MinDelvTm.val($BrIn.dgMinDelTime),
	$MaxDelvKMRg.val($BrIn.dgMaxDeliveryRange),
	$FreeDelvKMRg.val($BrIn.dgPerKmCharge),
	$MinFreeOrdrAmt.val($BrIn.dgMinFreeOrderPrice);	
	
	if($BrIn.dgHavBestSel == 1){

		$BestSel.addClass('hover');
	}else{

		$BestSel.removeClass('hover');
	}

	$AddEditOpt.addClass('show').slideDown(450).removeClass('hide');  
    $AddOpt.addClass('fa-minus').removeClass('fa-plus');
    $StrBtn.html('Update');
    $(window).scrollTop(0);    
}

EditItem = function(t){

	$ErbId = $('#e-br-in'),$brId = $('#brId'), $CatId = $('#CatId'),$SubCatId=$('#SubCatId'),$itmNm=$('#itmNm'),$itmPrc=$('#itmPrc'),$AvlAtck=$('#AvlAtck');

	$InCls.val('');
	$ItemInfo = JSON.parse($(t).attr('data-value'));	
	$brId.val($ItemInfo.beId).trigger('change'),
	$CatId.val($ItemInfo.cbCatId).trigger('change'),
	$SubCatId.val($ItemInfo.cbId).trigger('change'),
	$ErbId.val($ItemInfo.vcItemId),
	$itmNm.val($ItemInfo.vcItemName),
	$itmPrc.val($ItemInfo.intPriceLvl1),		
	$AvlAtck.val($ItemInfo.intItemCnt),
	$('input:radio[name=ItmType][value='+$ItemInfo.boIsVeg+']').prop('checked', true);
	$('input:radio[name=Portion][value='+$ItemInfo.imHavPortion+']').prop('checked', true);		
	
   	$AddEditOpt.addClass('show').slideDown(450).removeClass('hide');  
    $AddOpt.addClass('fa-minus').removeClass('fa-plus');
    $StrBtn.html('Update');
    $(window).scrollTop(0);
}

UpdateStore =  function(t){

	$Err = 0, $brNm = $('#brNm'), $brAddr = $('#brAddr'), $city = $('#city'), $pincode = $('#pincode'), $brNo = $('#brNo'), $brEmail = $('#brEmail'), $OpenTm = $('#OpenTm'), $ClsTm = $('#ClsTm'), $MinOrdrAmt = $('#MinOrdrAmt'), $MinDelvTm = $('#MinDelvTm'), $MaxDelvKMRg = $('#MaxDelvKMRg'), $FreeDelvKMRg = $('#FreeDelvKMRg'), $MinFreeOrdrAmt = $('#MinFreeOrdrAmt'), $BestSel = $('#BestSel');

	$ErrF = $('.bo-frm-err');

	if($brNm.val() == '' || $brAddr.val() == '' || $City.val() == '' || $Pincode.val() == '' ||  $brNo.val() == '' || $brEmail.val() == '' || $OpenTm.val() == '' || $ClsTm.val() == '' || $MinOrdrAmt.val() == '' ||  $MinDelvTm.val() == '' || $MaxDelvKMRg.val() == '' || $FreeDelvKMRg.val() == '' ||  $MinFreeOrdrAmt.val() == '' || $PerKmCharge.val() == ''){

		$Err = 1;
		$ErrF.addClass('hide');		
	}
	
	$BestSelOpt = 0;

	if($BestSel.hasClass('hover')){

		$BestSelOpt = 1;
	}

	if(!$Err == 1){	

		$LdrTxt.html('Store Updating');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$Stores = {

			ResId           : t,
			brNm 			: $brNm.val(),
			brAddr 			: $brAddr.val(),
			city 			: $city.val(),
			pincode 		: $pincode.val(),
			brNo 			: $brNo.val(),
			brEmail 		: $brEmail.val(),
			OpenTm 			: $OpenTm.val(),
			ClsTm 			: $ClsTm.val(),
			MinOrdrAmt 		: $MinOrdrAmt.val(),
			MinDelvTm 		: $MinDelvTm.val(),
			MaxDelvKMRg 	: $MaxDelvKMRg.val(),
			FreeDelvKMRg 	: $FreeDelvKMRg.val(),
			MinFreeOrdrAmt 	: $MinFreeOrdrAmt.val(),
			BestSel 		: $BestSel.val(),
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'store-edit',
			type 	: 'POST',
            dataType: 'json',
            data 	: $Stores,
            encode 	: !0
        }).done(function(t) {

        	$PreLdr.addClass('hide');
			
			if(t.Success){

             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('Store Details Updated Successfully');              
			}           
            //console.clear()

        }).fail(function(t) {

        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');

        })
	}
	return false;
}

UpdateCategory = function(t){

	$Err = 0, $brId = $('#brId'), $CatNm = $('#CatNm');

	if($brId.val() == '' || $CatNm.val() == ''){

		$Err = 1;
		$ErrF.removeClass('hide');
	}

	if(!$Err == 1){	

		$LdrTxt.html('Category Updating');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$category = {

			CatId           : t,
			CatNm 			: $CatNm.val(),
			_token 			: $tknVl
		};
		$.ajax({
			url 	: BaseURL + 'cat-edit',
			type 	: 'POST',
            dataType: 'json',
            data 	: $category,
            encode 	: !0
        }).done(function(t) {

        	$PreLdr.addClass('hide');
			
			if(t.Success){

             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('Category Updated Successfully');              
			}           
            //console.clear()

        }).fail(function(t) {

        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');

        })
	}
	return false;
}

UpdateSubCategory= function(t){

	$Err = 0, $brId = $('#brId'), $CatId = $('#CatId'),$brId = $('#brId'),$SubCatNm=$('#SubCatNm');
	if(!$Err == 1){	

		$LdrTxt.html('SubCategory Updating');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');
		$subcategory = {

			SubCatId        : t,
			SubCatNm 		: $SubCatNm.val(),
			CatId 			: $CatId.val(),
			_token 			: $tknVl
		};
		$.ajax({
			url 	: BaseURL + 'catsub-edit',
			type 	: 'POST',
            dataType: 'json',
            data 	: $subcategory,
            encode 	: !0
        }).done(function(t) {

        	$PreLdr.addClass('hide');
			
			if(t.Success){

             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('SubCategory Updated Successfully');              
			}           
            //console.clear()

        }).fail(function(t) {

        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');

        })

		
	}
	return false;
}

UpdateCharges= function(t){

	$Err = 0,$brId = $('#brId'), $brNm = $('#brNm'),$brAddr=$('#brAddr'),$BestSel=$('#BestSel');
	if($brId.val() == 0){

		$Err = 1;
		$brId.next().next().css('border-bottom','0.0625rem solid #b93838').next().addClass('show').removeClass('hide');
	}

	if(!$Err == 1){	

		$LdrTxt.html('Charges Updating');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');

		$BestSel=$('input[name=BestSel]:checked').val();
		$charges = {

			ChrgId        	: t,
			brNm 			: $brNm.val(),
			brAddr 			: $brAddr.val(),
			BestSel 		: $BestSel,
			_token 			: $tknVl
		};
		$.ajax({
			url 	: BaseURL + 'charges-edit',
			type 	: 'POST',
            dataType: 'json',
            data 	: $charges,
            encode 	: !0
        }).done(function(t) {

        	$PreLdr.addClass('hide');
			
			if(t.Success){

             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('Charges Updated Successfully');              
			}           
            //console.clear()

        }).fail(function(t) {

        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');

        })

		
	}

	return false;
}


UpdateItem=function(t){

	$Err = 0,$ErbId = $('#e-br-in'),$brId = $('#brId'), $CatId = $('#CatId'),$SubCatId=$('#SubCatId'),$itmNm=$('#itmNm'),$itmPrc=$('#itmPrc'),$AvlAtck=$('#AvlAtck');

	if($brId.val() == 0){

		$Err = 1;
		$brId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');
	}
	
	if($CatId.val()	== 0){

		$Err = 1;
		$CatId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');;
		
	}
	
	if($SubCatId.val()==0){

		$Err = 1;
		$SubCatId.css('border','solid 1px #f44336e0').next().addClass('hide').removeClass('show');;
	
	}


	if(!$Err == 1){	

		$ItmType=$('input[name=ItmType]:checked').val();
		$Portion=$('input[name=Portion]:checked').val();
		$LdrTxt.html('Item Updating');
		$PreLdr.removeClass('hide');
		$CanPop.addClass('hide');
		$item = {

			ItemId        	: t,
			itmNm 			: $itmNm.val(),
			SubCatId 		: $SubCatId.val(),
			CatId 			: $CatId.val(),
			itmPrc			: $itmPrc.val(),
			AvlAtck			: $AvlAtck.val(),
			ItmType			: $ItmType,
			Portion			: $Portion,
			_token 			: $tknVl
		};

		$.ajax({
			url 	: BaseURL + 'item-edit',
			type 	: 'POST',
            dataType: 'json',
            data 	: $item,
            encode 	: !0
        }).done(function(t) {

        	$PreLdr.addClass('hide');
			
			if(t.Success){

             	$AddEditOpt.addClass('hide').slideUp(450).removeClass('show');  
                $AddOpt.removeClass('fa-minus').addClass('fa-plus'); 
                $UsrPop.removeClass('hide');                
                $ActnSuc.removeClass('hide');                
                $PopMsg.html('Item Updated Successfully');              
			}           
            //console.clear()

        }).fail(function(t) {

        	$UsrPop.removeClass('hide');
            $PopMsg.html('Something went wrong. Check your connection server');

        })

		
	}
	return false;
}
 
function getCategory() {
	
 	$ErbId = $('#e-br-in'),$brId = $('#brId'),$CatId=$('#CatId'),$SubCatId=$('#SubCatId');	
    if ($('#brId').val() != '') {

    	$resid = {
			brId 			: $brId.val(),				
			_token 			: $tknVl
		};


      	$.ajax({
      	url 	: BaseURL + 'cat-get',  
        type 	: 'POST',
		data    : $resid ,
		dataType: 'json',
		encode 	: !0
	}).done(function(t){

		if(t.length>0){

		$CatId.html(''); 
		$htmlData = '';
		$htmlData +='<option value=0>Select Category</option>';
		for (var i = 0; i < t.length; i++) {       
	        var jCatId = t[i]['cbCatId'] ;
	        var jCatNm = t[i]['crName'] ;	      
	        $htmlData += '<option value='+jCatId+'>'+jCatNm+'</option>';       
    	} 

    	$CatId.html($htmlData);

    }
    else
    {	    	
    	$CatId.html('');
    	$SubCatId.html('');
    	$CatId.html('<option value=0>Select Category</option>');
    	$SubCatId.html('<option value=0>Select SubCategory</option>');    
    }                 
          } ).fail(function(t) {

        	alert('Failed Loading Category');
        })
	}
};

function getSubcategory(){

$ErbId = $('#e-br-in'),$brId = $('#brId'),$CatId=$('#CatId'),$SubCatId=$('#SubCatId');
if ($('#CatId').val() != '') {

	$catid = {
			CatId 			: $CatId.val(),				
			_token 			: $tknVl
		};

		$.ajax({
      	url 	: BaseURL + 'catsub-get',  
        type 	: 'POST',
		data    : $catid ,
		dataType: 'json',
		encode 	: !0
	}).done(function(t){

		if(t.length>0){
		$SubCatId.html(''); 
		$htmlData = '';
		$htmlData +='<option value=0>Select SubCategory</option>';
		for (var i = 0; i < t.length; i++) {       
	        var jSubCatId = t[i]['cbId'] ;
	        var jSubCatNm = t[i]['vcCatSubName'] ;
	        $htmlData += '<option value='+jSubCatId+'>'+jSubCatNm+'</option>';       
    	} 
    	$SubCatId.html($htmlData);
    }
    else
    {	 

    	$SubCatId.html('');
    	$htmlData = '';
		$htmlData ='<option value=0>Select SubCategory</option>';
    	$SubCatId.html($htmlData );  
    }                 
          } ).fail(function(t) {

        	alert('Failed Loading Category');
        })
	}
};


$(function(){	 

	$UsrPop.click(function(e){

		e.preventDefault();	
		$UsrPop.addClass('hide');
	});

	$('.chng-sts').click(function(e){

		e.preventDefault();	
		RmPop();	

		$InCls.val('');	
		$AddEditOpt.addClass('hide').slideUp(500).removeClass('show');	
		$AddOpt.removeClass('fa-minus').addClass('fa-plus'); 

		$ActnGngHpn.attr({
			'data-row' 		: '',
			'data'			: '',
			'data-act'		: '',
			'data-td-act'	: ''
		}).removeClass('hide');

		$ConFrmHtml 	= $(this).attr('data-html');
		$DtRw 			= $(this).attr('data');
		$DtRwNm			= $(this).attr('data-row');
		$DtAct 			= $(this).attr('data-act');
		$BtnNm 			= $(this).attr('data-btn');
		$DtTdAct 		= $(this).attr('data-td-act');
		
		$ActnGngHpn.attr({
			'data-row' 		: $DtRwNm,
			'data'			: $DtRw,
			'data-act'		: $DtAct,
			'data-td-act'	: $DtTdAct
		}).html($BtnNm);

		$PopMsg.html($ConFrmHtml);
		$UsrPop.removeClass('hide');
		$ActnGng.removeClass('hide'); 
		$CanPop.removeClass('hide').html('Cancel');
	});

	$CanPop.click(function(e){
		e.preventDefault();
		$('#ordr-viewed').val(0)
		RmPop();
	});

	$ActnGngHpn.click(function(e){

		e.preventDefault();	
		
		$Act 	= $(this).attr('data-act');
		$TdAct 	= $(this).attr('data-td-act');

		if($Act == 'str'){
			$ActURL = 'store-status';
		}

		if($Act == 'cat'){
			$ActURL = 'cat-status';
		}

		if($Act == 'chrg'){
			$ActURL = 'charges-status';
		}

		if($Act == 'subcat'){
			$ActURL = 'cat-sub-status';
		}

		if($Act == 'itm'){
			$ActURL = 'item-status';
		}

		$UsrPop.addClass('hide').removeClass('show')
		
		$DtRw 			= $(this).attr('data');
		$DtRwNm 		= $(this).attr('data-row');		

		$ActVal = {
			ActId 	: $DtRw,
			_token 	: $('input[name=_token]').val()
		};	
	
		$.ajax({
			url 		: BaseURL + $ActURL,
			type 		: 'POST',
            dataType	: 'json',
            data 		: $ActVal, 
            encode		: !0
        }).done(function(t) {
			
			if(t.Success){
				$Status = 'In-active'
				if(t.Status == 1){
					$Status = 'Active';
				}
				$DtTbl.find('tr#row-'+parseInt($DtRwNm)).find('td:eq('+$TdAct+')').html($Status);				
			}else{
				if(t.ChErr){
					$PopMsg.html(t.Msg);
					$UsrPop.removeClass('hide');
					$ActnGngHpn.addClass('hide');
					$CanPop.addClass('hide');
				}
			}           
            console.clear()
        }).fail(function(t) {});
    });

    $('.ordr-sts-chang').click(function(e){

    	$OrdrItmCnt.addClass('hide');

    	e.preventDefault();   
    	RmPop();	

    	$OrdrId 			= $(this).attr('data-ordr');
		$Need2Chng			= $(this).attr('data-n2c-ordr');
		$CurrOrdr			= $(this).attr('data-cur-ordr');
		$IntOrdrId			= parseInt($OrdrId);

		$IsOrdrViewed		= $('#ordr-viewed');

		if($IsOrdrViewed.val() == '0'){

			$PopMsg.html('Are you sure to change the order status?');
	    	
	    	$ActnCanOrdr.attr({
	    		'data-ordr' 		:  $OrdrId,
	    		'data-n2c-ordr' 	:  $Need2Chng,
	    		'data-cur-ordr' 	:  $CurrOrdr
	    	}).removeClass('hide').html('Yes');
	    	
	    	$UsrPop.removeClass('hide');    	
	    	$ActnGng.removeClass('hide');    	
	    	$CanPop.removeClass('hide').html('No');
	    	$IsOrdrViewed.val('1');	    	
	    	return false;
		}

		$LdrTxt.html('Status Changing');
		$PreLdr.removeClass('hide');

		if($Need2Chng == '2'){
			$HTML = 'Confirming'; 
		}
		if($Need2Chng == '3'){
			$HTML = 'Progressing'; 
		}
		if($Need2Chng == '4'){
			$HTML = 'Cancelling'; 
		}
		if($Need2Chng == '4'){
			$HTML = 'Deliver Processing'; 
		}

		$OrdrVal = {
			OrdrId 		: $OrdrId,
			Need2Chng 	: $Need2Chng,
			_token 		: $tknVl
		};

		$.ajax({
			url 		: BaseURL + 'order-status',
			type 		: 'POST',
            dataType 	: 'json',
            data 		: $OrdrVal, 
            encode 		: !0
        }).done(function(t) {
			
			if(t.Success){				

				 RmPreLodr($OrdrId);		
			}           
            // console.clear()
        }).fail(function(t) {});		

    });

    $('#actn-confirm').click(function(e){

    	$OrdrId 			= $(this).attr('kichn-ordr'); 
    	$HideId 			= $(this).attr('kichn-hide'); 
		
		$OrdrVal = {
			OrdrId 		: $OrdrId,
			_token 		: $tknVl
		};

		$.ajax({
			url 		: BaseURL + 'kitchen-status',
			type 		: 'POST',
            dataType 	: 'json',
            data 		: $OrdrVal, 
            encode 		: !0
        }).done(function(t) {
			
			if(t.Success){				
					
				alert('Item Prepared');
				$( '#'+$HideId).hide();
				$( '#PopUpAdd').hide();
			}           
            
        }).fail(function(t) {});			

    });

    
    $('#actn-success').click(function(e){   


    	$OrdrId 			= $(this).attr('kichn-Cordr'); 
    	$HideId 			= $(this).attr('kichn-hide'); 

		$OrdrVal = {
			OrdrId 		: $OrdrId,
			_token 		: $tknVl
		};

		$.ajax({
			url 		: BaseURL + 'kichn-cancelstatus',
			type 		: 'POST',
            dataType 	: 'json',
            data 		: $OrdrVal, 
            encode 		: !0
        }).done(function(t) {
			
			if(t.Success){				
			
				alert('Order Cancelled');						
				$( '#'+$HideId).hide();
				$( '#PopUp').hide();
			}           
            
        }).fail(function(t) {});			

    });

    $('.close_button').click(function(e){

    	e.preventDefault();
    	RmPop();

    	$OrdrId 			= $(this).attr('data-ordr');
		$ChnOrdrTyp			= $(this).attr('data-n2c-ordr');
		$IsOrdrViewed		= $('#ordr-viewed'); 	
    	$PopMsg.html('Are you sure to cancel this order?');
    	$ActnCanOrdr.attr({
    		'data-ordr' 		:  $OrdrId,
    		'data-n2c-ordr' 	:  $ChnOrdrTyp
    	}).removeClass('hide').html('Yes');
    	$UsrPop.removeClass('hide');    	
    	$ActnGng.removeClass('hide');    	
    	$CanPop.removeClass('hide').html('No');    	
		$IsOrdrViewed.val('0');
    });



    $('.print-bill').click(function(e){

    	$OrdrId 	= $(this).attr('data-ordr');

    	$OrdrVal 	= {			
			_token 		: $tknVl
		};

		$.ajax({
			url 		: BaseURL + 'bill/print/'+ $OrdrId,
			type 		: 'POST',
            dataType 	: 'json',
            data 		: $OrdrVal, 
            encode 		: !0
        }).done(function(t) {
			
			if(t.Success){				

				$PreLdr.addClass('hide');
					
			}           
            console.clear()
        }).fail(function(t) {});
    });

    $('.numbers-only').on('keypress keyup blur',function (event) {    
        
	    $(this).val($(this).val().replace(/[^\d].+/, ''));
	        if ((event.which < 48 || event.which > 57)) {
	            event.preventDefault();
	        }
	});

	$('.decimal-numbers').on('keypress keyup blur',function (event) {
	    
	    $(this).val($(this).val().replace(/[^0-9\.]/g,''));
	        if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	            event.preventDefault();
	        }
	});

	$('.cancel-add-update').click(function(e){

		$('#str-btn').html('Add');
        $('.input-class').val('');
        $('.input-cls-slt').val(0);
        e.preventDefault();  
        $AddEditOpt = $('.add-edit-opt');           
        $AddOpt = $('.added-opt');      
       
        $AddEditOpt.addClass('hide').removeClass('show');  
        $AddOpt.removeClass('fa-minus').addClass('fa-plus');               
        
        return false;
	});

	$('.reportlist').click(function(e){
		$('.reportlist').css('display', 'none');
		$('.reportdata').css('display', 'block');
	});


  $( '#rptlist' ).change(function() {

  	var rptheader = $('#rptlist option:selected').text(); 
   	$( '#rptheader').html(rptheader);
});

});

removeWhileOnKeyUp = function(t){

	$('#'+t).next().next().css('border-bottom','0.0625rem solid #999').next().addClass('hide').removeClass('show');
}

ShowMenu = function(t, Dis){	

	$OrdrTyp 		= $(Dis).attr('data-order-type');

	$('#pop-can-ordr-sts').addClass('col-md-6').removeClass('col-md-12');

	$OrdrVal 		= {

		Ordr 	: t,
		OrdrTyp : $OrdrTyp,
		_token 	: $tknVl
	};

	$LdrTxt.html('Getting Order Details');
	$PreLdr.removeClass('hide');

	$.ajax({
		url 	: BaseURL + 'order-get',
		type 	: 'POST',
	  	dataType: 'json',
	  	data 	: $OrdrVal,
	   	encode 	: !0
	}).done(function(t) {
			
		if(t.Success){
			$OrdrItm 		= t.OrdrItm; 
			$Ordr 			= t.Ordr;		
			$OrdrCus 		= t.Ordr;		
			$ItmHtml 		= '';

			$('#ordr-viewed').val(1)
			
			$.each($OrdrItm,function($index,$itmD){

				$ItmHtml += '<div class="col-md-12 zeropadding order-items-inv"><div class="col-md-8 order-item-nm-odd"><span class="order-itm-span1">'+$itmD.omItemName+'</span></div><div class="col-md-4 order-item-nm-odd"><span class="order-itm-span2">'+$itmD.omQty+'</span></div></div>';					
			});	

			$('#pop-ordr-res').html($Ordr.beName);
			$('#pop-ordr-no').html($Ordr.orId);
			$('#pop-cus-mbl').html($Ordr.crMobile);
			$('#pop-cus-nm').html($Ordr.crFirstname);
			$('#pop-cus-tm').html($Ordr.created_at);
			$('#pop-cus-addr').html($OrdrCus.coDeliveryAddr);
			$('#pop-ordr-rmrk').html($Ordr.orRemarks);
			$('#pop-ordr-itms').html($ItmHtml);	
			$('#pop-order-sts-nm').html($(Dis).attr('data-ordr-sts-html'));

			$('#pop-chg-ordr-sts').attr({

				'data-ordr' 		: $(Dis).attr('data-ordr'),
				'data-n2c-ordr' 	: $(Dis).attr('data-n2c-ordr'),
				'data-cur-ordr' 	: $(Dis).attr('data-cur-ordr')
			});

			if($(Dis).attr('data-cur-ordr') == '4'){
				$('#pop-chg-ordr-sts').addClass('hide');
				$('#pop-can-ordr-sts').addClass('col-md-12').removeClass('col-md-6');
			}				
		}

		setTimeout(function(){

			$PreLdr.addClass('hide');						

			$OrdrItmCnt.removeClass('hide');

		},1000);			

	    console.clear();
	}).fail(function(t) {
		
		alert('Something went wrong. Check your network connetion');
	})
	
};

RmPop = function(){

	$UsrPop.addClass('hide'); 
	$ActnGng.addClass('hide'); 
	$ActnCanOrdr.addClass('hide').html(''); 
	$ActnSuc.addClass('hide').html(''); 
	$ActnGngHpn.addClass('hide').html(''); 
	$CanPop.addClass('hide').html(''); 
	$PopMsg.html(''); 
};

RmPreLodr = function(t){

	$OrdrCancl  = $('#ordr-cancel-'+t);
	$OrdrSts  	= $('#ordr-sts-'+t);
	$OrdrShow  	= $('#ordr-show-'+t);
	$OrdrChng  	= $('#ordr-change-'+t);
	$OrdrChngM 	= $('#ordr-change-m-'+t);
	$OrdrMn  	= $('#master-ordr-'+t);
	$NxtBtn  	= $('#nxt-btn-nm-'+t);
	$IsCnclOrdr = 0;
	$CurrOrdr 	= 0;	
	$NxtBtnNm	= '';

	$OrdrStsVl 	= $OrdrSts.val();

	if($OrdrStsVl == '1'){

		$NxtBtnNm      = 'OUT FOR DELIVERY';
        $OrdrCls       = 'con-ordr';
        $RmOrdrCls     = 'pen-ordr';
        $Need2Chng     = 3;
        $AllOrdrExst   = 1;
        $CurrOrdr      = 2;
	}

	if($OrdrStsVl == '2'){

		$NxtBtnNm      = 'TO BE  DELIVERED';
        $OrdrCls       = 'out-ordr';
        $RmOrdrCls     = 'con-ordr';
        $Need2Chng     = 5;
        $AllOrdrExst   = 1;
        $IsCnclOrdr    = 1;
        $CurrOrdr      = 3;        
	}

	if($OrdrStsVl == '3'){

		$OrdrMn.addClass('hide');
		$OrdrMn.html('');
	}

	if($OrdrStsVl == '4'){

		$OrdrMn.addClass('hide');
		$OrdrMn.html('');
	}

	if($OrdrStsVl != '3' || $OrdrStsVl != '4'){

		$DataAttr = {

		'data-ordr' 			: t,
		'data-n2c-ordr' 		: $Need2Chng,
		'data-ordr-sts-html' 	: $NxtBtnNm,
		'data-cur-ordr' 		: $CurrOrdr
		};

		$NxtBtn.html($NxtBtnNm);
		$OrdrSts.val($CurrOrdr);

		$OrdrCancl.attr($DataAttr);
		$OrdrShow.attr($DataAttr);
		$OrdrChng.attr($DataAttr);
		$OrdrChngM.attr($DataAttr);

		if($IsCnclOrdr == 1){
			$OrdrCancl.addClass('hide');
		}
	}

	setTimeout(function(){
		
		$PreLdr.addClass('hide');
		$itmDt.addClass('hide');

		$OrdrCn = $('.cls-cnt-exst').length;

		$OrdrCn = parseInt($OrdrCn);		

		if($OrdrCn < 1){
			$('.no-order-avail').removeClass('hide');			
			$('.all-main-orders').addClass('hide');		
		}
	},1000);
};

function myFunction() {
    var x = document.getElementById('Export');
    if (x.style.display === 'block') {
        x.style.display = 'none';
    } else {
        x.style.display = 'block';
    }
}


var isNumberKey = function(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
};

var ValidateEmail =  function(){

	var inputText = document.getElementById('brEmail');
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

	if(inputText.value.match(mailformat)){
		return true;
	}else{
		document.getElementById('brEmail').value='';
		return false;
	}
};


var EnExport = function(t){

	$ExptOptMn = $('.export-opt-mn');

	if($ExptOptMn.hasClass('hide')){

		$ExptOptMn.removeClass('hide');
		$(t).addClass('export-opt-bg')
		$('.added-filters-1').addClass('add-border');
	}else{

		$ExptOptMn.addClass('hide');
		$(t).removeClass('export-opt-bg add-border');
		$('.added-filters-1').removeClass('add-border');
	}	
};

$(function(){

	$('.order-opt').click(function(){
		
		$('.all-orders-show').addClass('hide');
		$('.no-order-avail').addClass('hide');
		$('.all-main-orders').removeClass('hide');

		$OrdrV = 0;

		$ResId = $('#brId').val();
      	
      	$('input[type=checkbox]:checked').each(function(){

            $EvntVl 	= $(this).attr('value');

            $EvntVlLn 	= $('.ord-sts-'+$EvntVl).length;

            if(parseInt($EvntVlLn) != 0){               	

            	$OrdrV 		= 1;        		

      			$('.ord-sts-'+$EvntVl+'.res-'+$ResId).removeClass('hide'); 

      			if($ResId == 0){

      				$('.ord-sts-'+$EvntVl).removeClass('hide');
      			}

      			// $FinalLn = $('.ord-sts-'+$EvntVl+'.res-'+$ResId+'.hide').length;

      			// alert($FinalLn)

      			// if(parseInt($FinalLn)) {
      					
      			// }
      			           	
            }  
        }); 

        if($OrdrV ==  0){
			
        	$('.all-main-orders').addClass('hide');
        	$('.no-order-avail').removeClass('hide');
        }

	});

	$('#pop-can-ordr-sts').click(function(){
		$OrdrItmCnt.addClass('hide');
		$('#ordr-viewed').val(0)
		RmPop();
	});

	$(document).keyup(function(t){

    	'27' == t.which && $OrdrItmCnt.addClass('hide');
	});
});

var OrderReviewed =  function(){

	$ResId = $('#brId').val();

	$('.order-opt').prop('checked', true);

	$('.no-order-avail').addClass('hide');
	$('.all-main-orders').removeClass('hide');

	if($ResId == 0){

		$('.all-orders-show').removeClass('hide');

	}else{

		$('.all-orders-show').addClass('hide');
		$('.res-'+$ResId).removeClass('hide');

		$ResLen = $('.res-'+$ResId).length;

		if(parseInt($ResLen) == 0){

			$('.all-main-orders').addClass('hide');
			$('.no-order-avail').removeClass('hide');
		}
	}

};

$(function(){

	setInterval(function(){

		var NewDt = new Date();
		$Dt 	= NewDt.getFullYear()+'-'+(NewDt.getMonth()+1)+'-'+NewDt.getDate();
		$Tm 	= NewDt.toLocaleTimeString();
		$CurTm 	= $Dt +' '+ $Tm;	
		$('#app-cur-tm').html($CurTm+'.');

	},500);

	$('#usr-menu-avt').on('mouseover', function(){

		$('.user-menu-right').removeClass('hide');
	});


	$('#usr-menu-avt').on('mouseout', function(){

		$('.user-menu-right').addClass('hide');
	});

	$('#exp-opt').click(function(e){

		e.preventDefault();

		$ClsOpt 	= $('#cls-opt');
		$ExpOpt 	= $('#exp-opt');
		$SidMnVw 	= $('#side-menu-view');
		$SmlVwSdMn 	= $('#small-view-side-menu');
		$FulVwSdMn 	= $('#full-view-side-menu');
		$RitVwCnt 	= $('#right-view-content');
		$VerCn 		= $('.ver-cont');
		$SplAmtCls  = $('.spl-amt-cls');

		$ExpOpt.addClass('hide');
		$ClsOpt.removeClass('hide');
		$SidMnVw.addClass('side-menu-exp');	
		$SmlVwSdMn.addClass('hide');
		$FulVwSdMn.removeClass('hide');
		$RitVwCnt.addClass('right-opt-cnt-exp');
		$VerCn.addClass('ver-cont-add-on');
		$SplAmtCls.addClass('spl-amt-exp');		
		$('#profit-sale, #loss-sale').addClass('profile-loss-ab');

		$('.middle-body-right').addClass('bdy-spl-rit-cls');		
		$('.export-opt').addClass('export-opt-exp');		
		$('.added-filters-1').addClass('added-filters-1-exp');		
		$('.x-rpt-str').addClass('x-rpt-str-exp');		
	});

	$('#cls-opt').click(function(e){

		e.preventDefault();

		$ClsOpt 	= $('#cls-opt');
		$ExpOpt 	= $('#exp-opt');
		$SidMnVw 	= $('#side-menu-view');
		$SmlVwSdMn 	= $('#small-view-side-menu');
		$FulVwSdMn 	= $('#full-view-side-menu');
		$RitVwCnt 	= $('#right-view-content');
		$VerCn 		= $('.ver-cont');
		$SplAmtCls  = $('.spl-amt-cls');

		$ExpOpt.removeClass('hide');
		$ClsOpt.addClass('hide');
		$SidMnVw.removeClass('side-menu-exp');		
		$SmlVwSdMn.removeClass('hide');
		$FulVwSdMn.addClass('hide');
		$RitVwCnt.removeClass('right-opt-cnt-exp');	
		$VerCn.removeClass('ver-cont-add-on');
		$SplAmtCls.removeClass('spl-amt-exp');
		$('#profit-sale, #loss-sale').removeClass('profile-loss-ab');
		$('.middle-body-right').removeClass('bdy-spl-rit-cls');
		$('.export-opt').removeClass('export-opt-exp');
		$('.added-filters-1').removeClass('added-filters-1-exp');
		$('.x-rpt-str').removeClass('x-rpt-str-exp');
	});

	$('#full-view-side-menu-ul').metisMenu();

	$('.add-edit-dis').click(function(e) {

        $('#str-btn').html('Add');
        $('.input-class').val('');
        $('.input-cls-slt').val(0);
        $('.bo-frm-err').addClass('hide');

		e.preventDefault();
		$AddEditOpt = $('.add-edit-opt');
		$AddOpt = $('.added-opt');

		if ($AddEditOpt.hasClass('show')) {
		    $AddEditOpt.addClass('hide').removeClass('show');
		    $AddOpt.removeClass('fa-minus').addClass('fa-plus');
		} else {
		    $AddEditOpt.addClass('show').removeClass('hide');
		    $AddOpt.addClass('fa-minus').removeClass('fa-plus');

		}

		$('.chosen-select').val('').trigger('chosen:updated');
		return false;                
    });

});

(function($){

    $(window).on('load',function(){
    	$('#full-view-side-menu').mCustomScrollbar({
    		theme : 'light-thin'
    	});

    	$('.middle-body-1').mCustomScrollbar({
    		theme : 'dark'
    	});
    	$('.right-opt-cnt-cls').mCustomScrollbar({
    		theme : 'dark'
    	});

    	$('.all-res').mCustomScrollbar({
    		theme : 'dark'
    	});

    	$('.bst-sale-itm').mCustomScrollbar({
    		theme : 'dark'
    	});

    	$('.sub-cat-d').mCustomScrollbar({
    		theme : 'dark'
    	});

    	$('.all-sale-itm').mCustomScrollbar({
    		theme : 'dark'
    	});

    	$('.crt-itms').mCustomScrollbar({
    		theme : 'dark'
    	});
	});
})(jQuery);

var ExpandReport = function(t){
	
	$('.all-t-rpt').addClass('hide');
	
	if(t == 1){
		
		$('#rpt-bdy-exp-x').removeClass('hide');
	}
};



var userLogin = function() {

    var Err = 0, usrNm = $('#usrNm'), pwd = $('#pwd');
  

    if(usrNm.val() == ''){

        usrNm.addClass('err_btm').next().removeClass('hide');
        Err = 1; 
    }else{

        usrNm.removeClass('err_btm').next().addClass('hide');
    }

     if(pwd.val() == '') {

        pwd.addClass('err_btm').next().removeClass('hide');
        Err = 1;        
    }else{

        pwd.removeClass('err_btm').next().addClass('hide');
    }

    if (Err == 1) {
        return false;
    }
};


$(function(){

    $('.button_store').click(function(){

        $('.cus-det-ordr').next().next().removeClass('err');

        $err = true; $inc = 0;
        $('.cus-det-ordr').each(function(){

            if($inc == 0){
                if($(this).val().length < 10){
                    $(this).next().next().addClass('err');
                    $err = false;
                }
            }else{

                if($(this).val() == ''){

                    $(this).next().next().addClass('err');
                    $err = false;
                }else{
                	$(this).next().next().removeClass('err');
                }
            }            
            $inc++;
        });        

        if($err != false){

            $mblNo = $('#mblNo'), $cusNm = $('#cusNm'), $cusAddr = $('#cusAddr'), $lanMrk = $('#landmark'), $dob = $('#dateOfBirth'), $payMode = $('input[name=payMode]:checked'), $token = $('input[name=_token]');
            
            $res        = this.id;
            $split      = $res.split('-');
            $parseInt   = parseInt($split[2]);

            cusDts = {
                mblNo   : $mblNo.val(),
                cusNm   : $cusNm.val(),
                cusAddr : $cusAddr.val(),
                lanMrk  : $lanMrk.val(),
                dob     : $dob.val(),
                payMode : $payMode.val(),
                resId   : $parseInt,
                _token  : $token.val()
            };

            
            $.ajax({
                url         : BaseURL + 'place/order',
                type        : 'POST',
                dataType    : 'json',
                data        : cusDts,
                encode      : !0
            }).done(function(t) {
                if(t.Success){
                    window.location.href = BaseURL + 'menu';
                }else{
                    alert('Something went wrong');
                }
                
            }).fail(function(t) {})  
            
        }else{

           $('.button_store').addClass('cursor-invalid');
           $('.res-footer').addClass('cursor-invalid').attr('title', 'Enter Customer Details');
        }
    });
});

var CustomerInfoValidation = function(){

     var Err = 0, mblNo = $('#mblNo'), cusNm = $('#cusNm'), cusAddr = $('#cusAddr'), landmark = $('#landmark');
  

    if(mblNo.val() == ''){

        mblNo.addClass('err_btm').next().addClass('show-cus').removeClass('hide-cus');
        Err = 1; 
    }else{

        mblNo.removeClass('err_btm').next().addClass('hide-cus').removeClass('show-cus');
    }

    if(cusNm.val() == '') {

        cusNm.addClass('err_btm').next().addClass('show-cus').removeClass('hide-cus');
        Err = 1;        
    }else{

        cusNm.removeClass('err_btm').next().addClass('hide-cus').removeClass('show-cus');
    }

    
    if (Err == 1) {
        return false;
    }

};

var PrsJSON = function(t){
	return JSON.parse("[" + t.replace(/({|,)\s*(\w+)\s*:/g, '$1"$2":') + "]")
};

var addCartItem = function(t){

    '' == t && (alert('Something went wrong'), window.location.href = window.location.href), '' == itmInf && (alert('Something went wrong'), window.location.href = window.location.href);
    t = parseInt(t);
    var e, o = new Array,
        a = PrsJSON(itmInf);
        a = a[0];

    if ($.each(a, function(o) {
            var s = parseInt(a[o].imId);
            a[o].imHavPortion;
            s == t && (e = {
                ID: s,
                IQ: 1,
                IP: 0
            })
        }), null == localStorage.getItem('IMCD' + BrId)) {
        o.push(e);
        var s = {
            CRT: o
        };
        if (o.length > 0) {
            var r = JSON.stringify(s);
            localStorage.setItem('IMCD' + BrId, r)
        }
    } else {

        var n = localStorage.getItem('IMCD' + BrId),
            i = JSON.parse(n),
            l = new Array;
        i.CRT;
        $.each(i.CRT, function(e) {
            var o = i.CRT[e].ID,
                a = i.CRT[e].IQ;
            i.CRT[e].IP;
            l.push(o), o == t && (FGTY = a + 1, i.CRT[e].IQ = FGTY, localStorage.setItem('IMCD' + BrId, JSON.stringify(i)))
        }), -1 === l.indexOf(t) && (i.CRT.push(e), localStorage.setItem('IMCD' + BrId, JSON.stringify(i)))
    }

    AddCRTHTML();
};


var AddCRTHTML = function(){

	$('.itm-cnt').addClass('hide')

    if (null != localStorage.getItem('IMCD' + BrId)) {
        var t = localStorage.getItem('IMCD' + BrId),
            e = JSON.parse(t),
            o = '',
            a = 0,
            s = 0;           
           
        o = '', CRTTiTle.html(''), CRTTiTle.html(o), o = '', $.each(e.CRT, function(t) {
            var s = e.CRT[t].ID,
                r = $('.IM-'+s),
                n = $('.IP-'+s),
                i = e.CRT[t].IQ,
                l = e.CRT[t].IP,
                c = parseInt(i) * parseFloat(n);

                $('#itm-cnt-in-'+s).html(i)
            a += c, o += '<tr class="cart-item-list-data" id="row_content_li_' + s + '">', o += '<td class="item-name cart-item-name">' + r + "</td>", o += '<td style="width: 40%;padding: 0;margin:0;text-align: center!important;" class="item-quantity">', o += '<input type="button" value="-" class="qtyminus" field="quantity"  name="' + s + '" onclick="decreaseItemQty(quantity_' + s + ",this.name," + l + ')" />', o += '<input type="text" name="quantity" id="quantity_' + s + '" value="' + i + '" class="qty" disabled/>', o += '<input type="button" value="+" class="qtyplus" field="quantity"  name="' + s + '" onclick="increaseItemQty(quantity_' + s + ",this.name," + l + ')"/>', o += '</td> <td class="item-price" style="color:#89959b">' + " &nbsp;" + CnvrtIntoDec(c) + "</td>", o += '<td class="item-delete" style="width: 10%;padding-left: 10px;margin:0 ; cursor:pointer;" onclick="deleteItemBasedOnCart(' + s + "," + l + ')" id="' + s + '">', o += '<i class="fa fa-times-circle" ></i>', o += "</td>", o += "</tr>"
        }), CRT.html(''), CRT.html(o), o = '', o += '<table class="table">', o += "<tbody>", o += "<tr>", o += '<td class="text-right" style="font-size:1.2em;">Sub total :</td>', o += '<td class="text-right" style=" width: 40%;font-size:1.2em;">', o += " " + CnvrtIntoDec(a), o += "</td>", o += "</tr>";
        var r = ChrgCalcAmt(a);
        if (0 != r) {
            var n = r[1],
                s = r[0];
            for (var i in n) o += "<tr>", o += '<td class="text-right">' + i + ":</td>", o += '<td class="text-right" style=" width:40%;text-indent: 20pt;">', o += " " + n[i], o += "</td>", o += "</tr>"
        }
        var l = CnvrtFlt(s) + CnvrtFlt(a),
            c = RndOnFCalcAmt(l);
            BtnPrcd = '';
        o += "</tbody>", o += "</table>", CRTChrg.html(''), CRTChrg.html(o), o = '', o += '<div class="text-right grand_total bit-1 bg_color" colspan="2" style="background: rgb(83, 98, 124);"><span>Total :</span>', o += " " + c, o += '</div>', BtnPrcd += '<button id="proceed-for-checkout" onclick="', CnvrtFlt(Res.dgMinOrderPrice) <= c ? (ClsAtrbt = 'class="payment_checkout_button"', textForProceed = "Continue", BtnPrcd += "enableCheckout()") : (ClsAtrbt = 'class="payment_checkout_button invalid"', textForProceed = "Min Delivery Amount : " + " " + Res.dgMinOrderPrice, BtnPrcd += "javascript:void(0)"), BtnPrcd += '" ' + ClsAtrbt + ">" + textForProceed + "</button>", Prcd2Ordr.html(''), Prcd2Ordr.html(o)
        $('#submit-btn-pr').html(''), $('#submit-btn-pr').html(BtnPrcd)
    } else o = '<tr><td class="text-center"  colspan="2"><div class="text-center" style="border:0px!important"><img class="text-center" src="' + BaseURL + '/images/app/empty_cart.png" style="width:58%"></span><div clas="bit-1" id="Powered_by"><a href="javascript:void(0)">Powered by Negits Solutions</a></div></div></td></tr>', CRTTiTle.html(''), CRT.html(o), CRTChrg.html(''), Prcd2Ordr.html(''),
    $('#submit-btn-pr').html('')
};

$(function(){

	$('.tt-sub-cat').click(function(){

		$CatId = $(this).attr('data-cat');

		$('.tt-itm').addClass('hide');	

		if($CatId == 0){
			$('.bst-sale-itm').removeClass('hide');
			$('.all-sale-itm').addClass('hide');
		}else{
			$('.bst-sale-itm').addClass('hide');
			$('.all-sale-itm').removeClass('hide');
		}		

		$('.cat-v-itm-'+$CatId).removeClass('hide');

		$CNm = $('.cat-nm-'+$CatId).html();

		$('#itm-header-nm').html($CNm);
	});
});

var CnvrtIntoDec = function(t) {
    return '' != t ? t.toFixed(2) : void 0
};

var ChrgCalcAmt = function(t) {

	if ('' != Chrg) {
        var e = Chrg,
            o = 0,
            a = new Array,
            s = 0,
            r = new Array;
        return $.each(e, function(r) {
        		alert(e)
            var n = (e[r].cgId, e[r].cgValue),
                i = e[r].cgName,
                l = e[r].cgIsInclusive;
            if ('' != n && '1' == l && '0' != n) {
                var c = CnvrtFlt(t) * (CnvrtFlt(n) / 100);
                s = CnvrtIntoDec(c), o += CnvrtFlt(s);
                var m = i + '(' + n + '%)';
                a[m] = s
            }
        }), 0 != o ? (r.push(o), r.push(a), r) : !1
    }
    return !1
};

var CnvrtFlt = function(t) {
    return parseFloat(t)
};


var RndOnFCalcAmt = function(e) {

	if ('' != Res) {

		if (0 == Res.dgRoundInOff) var o = CnvrtFlt(e),
        a = Math.round(o),
        s = CnvrtIntoDec(a);
	    else var s = CnvrtIntoDec(e);
	    return s;
	}

	return false;    
};