@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<style>
	.btn {
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
		.btn:active {
		background: linear-gradient(#4faefc, #006bff);
		color: #fff;
		position: relative;
		}
		.btn.btn-blue {
		color: #fff;
		background: linear-gradient(#81c5fd, #3389ff);
		}
		.btn.btn-blue:active {
		background: linear-gradient(#4faefc, #006bff);
		}
		.btn.btn-green {
		color: #fff;
		background: linear-gradient(#89e36b, #44ae21);
		}
		.btn.btn-green:active {
		background: linear-gradient(#56d72b, #338319);
		}
		.btn.btn-lg {
		font-size: 1.2em;
		padding: 12px 24px;
		}
		.btn.btn-block {
		display: block;
		width: 100%;
		}
	</style>

	<div class='page-content'>
		<div class='container-fluid'>
	
			@include('v1.Includes.PageTitleBox')
	
			<!-- First Review Start Here -->
	
			<div class='row justify-content-center'>
				<form class='row g-3 needs-validation' method='post' onsubmit='validateDaybook();return false;'>
					@csrf
					<input type='hidden' class='input-only current-row' id="stockNeeded" value='0'>
					<div class="mi-form-area-container">
						<div class="mi-grid-4-layout">
							<div class=''>
								<label for='validationCustom05' class='form-label'>From Date</label>
								<input type='text' class='form-control spl input-only date-input' id='fromDate'
									min="<?= date('Y-m-d', strtotime($fromDate)); ?>" max="{{date('Y-m-d'), strtotime($toDate)}}"/>
							</div>
							<div class=''>
								<label for='validationCustom05' class='form-label'>To Date</label>
								<input type='text' class='form-control spl input-only date-input' id='toDate'
								min="<?= date('Y-m-d', strtotime($fromDate)); ?>" max="{{date('Y-m-d'), strtotime($toDate)}}" />
							</div>
	
						</div>
	
						<div class='mi-btn-holder'>
	
						</div>
						<div class='mi-btn-holder'>
							<button class="btn btn-lg" id="stockButton" onclick="setStockEntries()">
								Stock Entries Needed
							</button>
							<button class="btn btn-blue btn-lg" type="submit">
								Show
							</button>
							<button class="btn btn-lg">
								Cancel
							</button>
						</div>
				</form>
			</div>
	
		</div>
	</div>
	</div>

@include('v1.Includes.Footer')