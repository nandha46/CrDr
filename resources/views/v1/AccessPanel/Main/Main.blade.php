@include('v1.AccessPanel.Includes.Header')
@include('v1.AccessPanel.Includes.Loader')
@include('v1.AccessPanel.Includes.Menu')
@include('v1.AccessPanel.Includes.OverlayPopup')

<div class='container-fluid sidebar d-md-flex align-items-stretch zeropadding'>
            <div class="col-md-3 zeropadding">

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
                <div class='col-md-9 d-flex flex-column spl-border zeropadding mb-3'>

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">தமிழ்</a></li>
                        <li><a href="#">மொழி</a></li>
                        <li>தமிழின் இனிமை</li>
                    </ul>
                    <div class='vd text-left d-flex mt-2 mb-4'>
                
                        <div class="pr-5 border pl-2 mr-4 d-none">
                            <ul class=" list-unstyled " id="pageSubmenu1">
                                <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Lesson 1</a></li>
                                <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Lesson 2</a></li>
                                <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Lesson 3</a></li>
                        
                            </ul>
                        </div>
                        <!-- <video width='1000px' class="" controls>
                            <source src='https://www.youtube.com/watch?v=tujI-mnGPtc' type='video/mp4' />
                        </video> -->
                        <iframe width="1000px" height="400px" src="https://youtube.com/embed/tujI-mnGPtc">
            </iframe>

                        <div id="accordion" class="col-md-3 accordion ">
                    <div class="card  border">
                        <div class="card-header-new collapsed" data-toggle="collapse" href="#Tamil1">
                            <a class="card-title"> தமிழ் </a>
                        </div>
                        <div id="Tamil1" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> தமிழின் இனிமை</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> மூதுரை</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> கடல்</a></li>
                        
                            </ul>
                            
                        </div>
                        <div class="card-header-new collapsed" data-toggle="collapse" data-parent="#accordion" href="#English1">
                            <a class="card-title"> English </a>
                        </div>
                        <div id="English1" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Exploring Space</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> My Native Place</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Our Nation</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header-new collapsed" data-toggle="collapse" data-parent="#accordion" href="#Maths1">
                            <a class="card-title"> Maths </a>
                        </div>
                        <div id="Maths1" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Measurements</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Time</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Information Processing</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header-new collapsed" data-toggle="collapse" data-parent="#accordion" href="#Science1">
                            <a class="card-title"> Science </a>
                        </div>
                        <div id="Science1" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Our Environment</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Animals</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Air</a></li>
                        
                            </ul>
                        </div>
                        <div class="card-header-new collapsed" data-toggle="collapse" data-parent="#accordion" href="#Social1">
                            <a class="card-title"> Social </a>
                        </div>
                        <div id="Social1" class="card-body collapse" data-parent="#accordion">
                        <ul class=" list-unstyled" id="pageSubmenu1">
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Forts and Palaces</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Agriculture</a></li>
                            <li class="unit"><a href="#"><span class="fa fa-chevron-right mr-2"></span> Educational Rights</a></li>
                        
                            </ul>
                        </div>
                    
                    </div>
                </div>
                        
                    </div>
                
                    <div class="mt-2 pt-2 mb-1">
            
            <!-- Nav tabs -->
            <ul class="nav nav-tabs detail-tab" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Tamil</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">English</a></li>
                <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Maths</a></li>
                <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Science</a></li>
                <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Social</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content p-3">
                <div role="tabpanel" class="tab-pane active" id="home">
                <h2 class='mt-4 mb-2'>Tamil</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        
                </div>
                <div role="tabpanel" class="tab-pane" id="profile">def</div>
                <div role="tabpanel" class="tab-pane" id="messages">ghi</div>
                <div role="tabpanel" class="tab-pane" id="settings">jkl</div>
            </div>
                </div>
   
                </div>
                        </div>
                        <div class="row container-fluid text-center spl-subject-footer">
<div class="col-md-2">
    <ul>
        <li><h4>Tamil</h4></li>
        <li>Lesson<b>1</b></li>
        <li>Lesson<b>2</b></li>
        <li>Lesson<b>3</b></li>
        <li>Lesson<b>4</b></li>
        <li>Lesson<b>5</b></li>
    </ul>
</div>
<div class="col-md-2">
    <ul>
        <li><h4>English</h4></li>
        <li>Lesson<b>1</b></li>
        <li>Lesson<b>2</b></li>
        <li>Lesson<b>3</b></li>
        <li>Lesson<b>4</b></li>
        <li>Lesson<b>5</b></li>
    </ul>
</div>
<div class="col-md-2">
    <ul>
        <li><h4>Maths</h4></li>
        <li>Lesson<b>1</b></li>
        <li>Lesson<b>2</b></li>
        <li>Lesson<b>3</b></li>
        <li>Lesson<b>4</b></li>
        <li>Lesson<b>5</b></li>
    </ul>
</div>
<div class="col-md-2">
    <ul>
        <li><h4>Science<h4></li>
        <li>Lesson<b>1</b></li>
        <li>Lesson<b>2</b></li>
        <li>Lesson<b>3</b></li>
        <li>Lesson<b>4</b></li>
        <li>Lesson<b>5</b></li>
    </ul>
</div>
<div class="col-md-2">
    <ul>
        <li><h4>Social</h4></li>
        <li>Lesson<b>1</b></li>
        <li>Lesson<b>2</b></li>
        <li>Lesson<b>3</b></li>
        <li>Lesson<b>4</b></li>
        <li>Lesson<b>5</b></li>
    </ul>
</div>
   
</div>    


@include('v1.AccessPanel.Includes.FooterMain')