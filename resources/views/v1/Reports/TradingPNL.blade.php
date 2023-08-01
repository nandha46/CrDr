@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<style>
	.btn2 {
		padding: 4px 12px;
		min-width: 88px;
		border: none;
		font: inherit;
		color: #373030;
		border-radius: 4px;
		outline: none;
		text-decoration: none;
		cursor: default;
		font-weight: 400;
		background: #fff;
		box-shadow: 0px 0px 1px rgba(0, 0, 0, 0.30), 0px 1px 1px rgba(0, 0, 0, .4);
		}
		.btn2:active {
		background: linear-gradient(#4faefc, #006bff);
		color: #fff;
		position: relative;
		}
		.btn2.btn-blue {
		color: #fff;
		background: linear-gradient(#81c5fd, #3389ff);
		}
		.btn2.btn-blue:active {
		background: linear-gradient(#4faefc, #006bff);
		}
		.btn2.btn-green {
		color: #fff;
		background: linear-gradient(#89e36b, #44ae21);
		}
		.btn2.btn-green:active {
		background: linear-gradient(#56d72b, #338319);
		}
		.btn2.btn-lg {
		font-size: 1.2em;
		padding: 12px 24px;
		}
		.btn2.btn-block {
		display: block;
		width: 100%;
		}
	</style>

	<div class='page-content'>
		<div class='container-fluid'>
	
			@include('v1.Includes.PageTitleBox')
	
			<!-- First Review Start Here -->
	
			<div class='row justify-content-center'>
				@include('v1.Includes.StatusToast')
                @include('v1.Includes.UpdateToast')
				<form class='row g-3 needs-validation' method='post'>
					@csrf
					<input type='hidden' class='input-only current-row' id="stockNeeded" name="stockNeeded" value='0'>
					<input type="hidden" class='input-only current-row' id="accheads" name="accheads" value="[]">
					<div class="mi-form-area-container">
						<div class="mi-grid-4-layout">
								<table id="account-select" class='disable-div table-fixed table-datatable table table-bordered dt-responsive nowrap scroll' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Account Name</th>
										</tr>
									</thead>
									<tbody class="" style="border-color: transparent">
										@foreach($accheads as $acchead)
										<tr id = 'row-{{$loop->index}}' data-ids="{{$acchead->id}}" data-acclevel="{{$acchead->level1}}" data-acccode="{{$acchead->accCode}}">
											<td>{{$acchead->sno}}</td>
											<td @class(['red-cell' => $acchead->accCode == 0, 'padding1' => $acchead->level1 == 2, 'padding2' => $acchead->level1 == 3,])>{{$acchead->accName}}</td>
										</tr>
										@endforeach
									</tbody>
								</table>
								<table id="stock-select" class='d-none table-fixed table-datatable table table-bordered dt-responsive nowrap scroll' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>Date</th>
											<th>Stock Value</th>
										</tr>
									</thead>
									<tbody class="" style="border-color: transparent">
										@foreach($dayStocks as $stock)
										<tr id = 'row-{{$loop->index}}'>
											<td>{{$stock->cDate}}</td>
											<td>{{$stock->stockValue}}</td>
										</tr>
										@endforeach
									</tbody>
								</table>
							<div class=''>
								<label for='validationCustom04' class='form-label required'>Report Order</label>
                                        <select class='form-select spl' id='report-order' name="reportOrder" onchange = 'return changeTrialBalReportOrder(this)'>
                                            <option value='1'>All</option>
                                            <option value='2'>Group</option>
                                        </select>
								<label for='validationCustom05' class='form-label'>Trading - P & L as on</label>
								<input type='text' class='form-control spl input-only daybook-date-input' id='toDate' name='toDate' value="{{date('Y-m-d', strtotime($toDate));}}" />
                                <div class="" style="padding-top: 1rem">
									<input type='checkbox' class='input-only' id='enableClosingStock' name='enableClosingStock' onchange="enableClosingStockInput(this);" />
									<label for='enableClosingStock' class='form-label required'>Closing Stock</label>
									<input type='text' class='form-control spl input-only' id='closingStock' name='closingStock' value='' disabled/>
								</div>
								<label for='validationCustom04' class='form-label required'>Accounts with zero Balance</label>
								<select class='form-select spl' id='zero-bal-accs' name="isZeroBalAccs">
									<option value='0'>No</option>
									<option value='1'>Yes</option>
								</select>
								<div class="d-none" id="level-div">
									<label for='validationCustom04' class='form-label required'>Select level</label>
									<select class='form-select spl' id='level' name="level" onchange="return accLevelDisplay();">
										<option value='6'>6</option>
										<option value='5'>5</option>
										<option value='4'>4</option>
										<option value='3'>3</option>
										<option value='2'>2</option>
										<option value='1'>1</option>
									</select>
								</div>
							</div>
	
						</div>
	
						<div class='mi-btn-holder'>
							<button class="btn2 btn-blue btn-lg" type="submit" onclick="submitTrialBalance();">
								Show
							</button>
							<button class="btn2 btn-lg">
								Cancel
							</button>
						</div>
						</div>
				</form>
			</div>
	
		</div>
	</div>
	</div>

@include('v1.Includes.Footer')