@include('v1.AccessPanel.Includes.Header')
@include('v1.AccessPanel.Includes.Loader')
@include('v1.AccessPanel.Includes.Menu')
@include('v1.AccessPanel.Includes.OverlayPopup')

<div class='container-fluid sidebar d-md-flex align-items-stretch '>
<div class="col-md-3">

            <div id="accordion" class="accordion">
                    <div class="card mb-0">
                        <div class="card-header collapsed" data-toggle="collapse" href="#Tamil">
                            <a class="card-title"> தமிழ் </a>
                        </div>
                        <div id="Tamil" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> மொழி</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> கல்வி</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> இயற்கை</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#English">
                            <a class="card-title"> English </a>
                        </div>
                        <div id="English" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Hospitality</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Sports</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> My Duties</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Maths">
                            <a class="card-title"> Maths </a>
                        </div>
                        <div id="Maths" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Geometry</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Numbers</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Patterns</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Science">
                            <a class="card-title"> Science </a>
                        </div>
                        <div id="Science" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Organ Systems</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Matter and Materials</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Energy</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#Social">
                            <a class="card-title"> Social </a>
                        </div>
                        <div id="Social" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Our Earth</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Towards History</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Good Citizen</a></li>
                        
                            </ul>
                        </div>
                    
                    </div>
            </div>
    <!-- <div class="mt-3">
            <div class="tagcloud">
              <a href="#" class="tag-cloud-link">Science</a>
              <a href="#" class="tag-cloud-link">Maths</a>
              <a href="#" class="tag-cloud-link">Tamil</a>
             
            </div>
                    </div> -->
</div>
	<!-- Page Content  -->
	<div class='col-md-9 d-flex flex-column spl-border mb-3'>
          <div class="spl-shadow">
                <div class="card-body ">
        <p class="text-left"><span>1.</span> ‘கழை’ இச்சொல் உணர்த்தும் சரியான பொருள் ____________</p>
         
                      <div class="row col-md-12">
                        <div class="col-md-6">
                          <div class="form-check">
                            <input class="form-check-input" type="radio" name="q1" id="q1_r1" value="r1">
                            <label class="form-check-label" for="q1_r1">
                            கரும்பு
                            </label>
                          </div>

                        </div>
                        <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="q1" id="q1_r2" value="r2">
                            <label class="form-check-label" for="q1_r2">
                            கறும்பு
                            </label>
                          </div>

                        </div>
                      </div>
                    <div class="row col-md-12">
                      <div class="col-md-6">
                      <div class="form-check">
                          <input class="form-check-input" type="radio" name="q1" id="q1_r3" value="r3">
                          <label class="form-check-label" for="q1_r3">
                          கருப்பு
                          </label>
                        </div>
                      </div>
                      <div class="col-md-6">
                      <div class="form-check">
                          <input class="form-check-input" type="radio" name="q1" id="q1_r4" value="r4">
                          <label class="form-check-label" for="q1_r4">
                          கறுப்பு
                          </label>
                        </div>
                      </div>
                    </div>
 
 
    </div>
  <div class="card-body">
        <p class="text-left"><span>2.</span> _______ broke out in the near by villages</p>
           

              <div class="row col-md-12">
                <div class="col-md-6">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r1" value="r1">
                    <label class="form-check-label" for="q1_r1">
                    Malaria
                    </label>
                  </div>

                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r2" value="r2">
                    <label class="form-check-label" for="q1_r2">
                    Cholera
                    </label>
                  </div>

                </div>
              </div>
              <div class="row col-md-12">
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r3" value="r3">
                    <label class="form-check-label" for="q1_r3">
                    Dengue
                    </label>
                  </div>
                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r4" value="r4">
                    <label class="form-check-label" for="q1_r4">
                      Flu
                    </label>
                  </div>
                </div>
              </div>


                
               

             

            
          
</div>
  <div class="card-body">
        <p class="text-left"><span>3.</span> Cube is covered by 6 squares. _____________</p>
        <div class="row col-md-12">
                <div class="col-md-6">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r1" value="r1">
                    <label class="form-check-label" for="q1_r1">
                      True
                    </label>
                  </div>

                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r2" value="r2">
                    <label class="form-check-label" for="q1_r2">
                     False
                    </label>
                  </div>

                </div>
              </div>
              <div class="row col-md-12 d-none">
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r3" value="r3">
                    <label class="form-check-label" for="q1_r3">
                      study of architecture
                    </label>
                  </div>
                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r4" value="r4">
                    <label class="form-check-label" for="q1_r4">
                      science of languages
                    </label>
                  </div>
                </div>
              </div>
 
</div>
<div class="card-body">
        <p class="text-left"><span>4.</span> What is the length of the alimentary canal?</p>
        <div class="row col-md-12">
                <div class="col-md-6">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r1" value="r1">
                    <label class="form-check-label" for="q1_r1">
                    3-5 m
                    </label>
                  </div>

                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r2" value="r2">
                    <label class="form-check-label" for="q1_r2">
                    5-6 m
                    </label>
                  </div>

                </div>
              </div>
              <div class="row col-md-12">
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r3" value="r3">
                    <label class="form-check-label" for="q1_r3">
                    9-11 m
                    </label>
                  </div>
                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r4" value="r4">
                    <label class="form-check-label" for="q1_r4">
                    6-9 m
                    </label>
                  </div>
                </div>
              </div>
 
</div>
<div class="card-body">
        <p class="text-left"><span>5.</span> The first metal invented by early human was</p>
        <div class="row col-md-12">
                <div class="col-md-6">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r1" value="r1">
                    <label class="form-check-label" for="q1_r1">
                    Iron
                    </label>
                  </div>

                </div>
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r2" value="r2">
                    <label class="form-check-label" for="q1_r2">
                    Copper
                    </label>
                  </div>

                </div>
              </div>
              <div class="row col-md-12">
                <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r3" value="r3">
                    <label class="form-check-label" for="q1_r3">
                      Gold
                    </label>
                  </div>
                </div>
                <div class="col-md-6 d-none">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="q1" id="q1_r4" value="r4">
                    <label class="form-check-label" for="q1_r4">
                      science of languages
                    </label>
                  </div>
                </div>
              </div>
 
</div>
 <div class="d-flex justify-content-center mb-3 d-none" >
  <ul class="pagination d-none">
  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item active"><a class="page-link" href="#">2</a></li>
  <li class="page-item"><a class="page-link" href="#">3</a></li>
  <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</div>

<div class="d-flex justify-content-end  mb-3" >
  <button class="previous-btn page-submit">Previous</button>
  <button class="next-btn page-submit">Next</button>
  <button class="submit-btn btn-success page-submit">Submit</button>
  <button class="cancel-btn btn-danger page-submit">Cancel</button>
</div>
</div>
</div>

@include('v1.AccessPanel.Includes.FooterMain')