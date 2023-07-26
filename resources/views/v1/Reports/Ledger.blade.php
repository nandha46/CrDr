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
								<table id="account-select" class='disable-div table-fixed table-datatable table table-striped table-bordered dt-responsive nowrap scroll' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
									<thead>
										<tr>
											<th>No</th>
											<th>Account Name</th>
										</tr>
									</thead>
									<tbody class="hoverable" style="border-color: transparent">
										@foreach($accheads as $acchead)
										<tr id = 'row-{{$loop->index}}' data-ids="{{$acchead->id}}" data-acclevel="{{$acchead->level1}}" data-acccode="{{$acchead->accCode}}">
											<td>{{$acchead->sno}}</td>
											<td @class(['red-cell' => $acchead->accCode == 0, 'padding1' => $acchead->level1 == 2, 'padding2' => $acchead->level1 == 3,])>{{$acchead->accName}}</td>
										</tr>
										@endforeach
									</tbody>
								</table>
							<div class=''>
								<label for='validationCustom04' class='form-label required'>Report Order</label>
                                        <select class='form-select spl' id='report-order' name="reportOrder" onchange = 'return changeReportOrder(this)'>
                                            <option value='1'>All</option>
                                            <option value='2'>Selected</option>
                                        </select>
								<label for='validationCustom05' class='form-label'>From Date</label>
								<input type='text' class='form-control spl input-only daybook-date-input' id='fromDate' name='fromDate' value="{{date('Y-m-d', strtotime($fromDate));}}" data-fromDate="{{date('Y-m-d', strtotime($fromDate));}}" data-toDate="{{date('Y-m-d', strtotime($toDate));}}" />
								<label for='validationCustom05' class='form-label'>To Date</label>
								<input type='text' class='form-control spl input-only daybook-date-input' id='toDate' name='toDate' value="{{date('Y-m-d', strtotime($toDate));}}" />
								<label for='validationCustom04' class='form-label required'>Transacted Accounts Only</label>
								<select class='form-select spl' id='transacted-only' name="transactedOnly">
									<option value='0'>No</option>
									<option value='1'>Yes</option>
								</select>
								<label for='validationCustom04' class='form-label required'>Monthly Cut-Off</label>
                                        <select class='form-select spl' id='monthly-cutoff' name="cutoff">
                                            <option value='0'>Don't Include</option>
                                            <option value='1'>Include</option>
                                        </select>
								<div style="padding: 0.65rem 2rem 0.65rem 0.75rem">
									<label for='isStockNeeded' class='form-label' style="padding-right: 2rem">Stock Entries Needed</label>
								<input type='checkbox' id='isStockNeeded' data-toggle="toggle" data-onlabel="Yes" data-offlabel="No"/>
								</div>
							</div>
	
						</div>
	
						<div class='mi-btn-holder'>
							<button class="btn2 btn-blue btn-lg" type="submit" onclick="submitLedger();">
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