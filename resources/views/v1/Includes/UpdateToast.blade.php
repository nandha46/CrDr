{{-- Toast start --}}
<div style="z-index: 11; margin-top:5rem;" class="toast align-items-center position-fixed top-0 start-50" role="alert"
  id="updateToast" data-bs-delay="3000">
  <div class="toast-body row">
    <div class="col-2" id="check-icon">
      <i data-feather="check-circle" color="green"> </i>
    </div>
    <div class="col-2 d-none errorToast" id="alert-icon">
      <i data-feather="alert-triangle" color="red"> </i>
    </div>
    <div class="col-8" id="updateToastText"># Added successfully</div>
    <div class="col-2">
      <i data-feather="x" color="red" data-bs-dismiss="toast" data-toggle="tooltip" title="close"> </i>
    </div>
  </div>
</div>
{{-- Toast End --}}