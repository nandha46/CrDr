@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')
    <div class='container-fluid'>
        <!-- Second Review Starts Here -->
        <section class="test-dashboard">
            <section class="section-void about-section gray-bg" id="about">
                <div class="mi-wrapper-container">
                    <div class="profile-grid-wrapper">

                        <div class="profile-grid-void">
                            <div class="about-avatar-image">
                                    <img src='./storage/app/profile_pic/admin.png' alt='profile-user' />
                            </div>
                        </div>
                        <div class="profile-grid-void">
                            <div class="about-text go-to flex-col">
                                <div class="name-header">
                                    <h3 class="dark-color">Nandha</h3>
                                    <div class="des">
                                        <h6 class="theme-color lead chip-lead">Super Admin</h6>
                                    </div>

                                </div>
                                <div class="title-header">
                                    <h3>Personal Details</h3>
                                </div>
                                <div class="personal_detail-container">
                                    <div class="personal_left">
                                        <div class="detail_card">
                                            <h1 class="label_holder">Username</h1>
                                            <p class="result_holder">: nandha</p>
                                        </div>
                                        <div class="detail_card">
                                            <h1 class="label_holder">Email</h1>
                                            <p class="result_holder">: nandha@mail.com</p>
                                        </div>
                                        <div class="detail_card">
                                            <h1 class="label_holder">Zodiac Enterp</h1>
                                            <p class="result_holder">: Employee</p>
                                        </div>
                                    </div>
                                    <div class="personal_right">
                                        <div class="detail_card">
                                            <h1 class="label_holder">Address</h1>
                                            <p class="result_holder">: street name</p>
                                        </div>
                                        <div class="detail_card">
                                            <h1 class="label_holder">DOB</h1>
                                            <p class="result_holder">: 18/12/2002</p>
                                        </div>
                                        <div class="detail_card">
                                            <h1 class="label_holder">City</h1>
                                            <p class="result_holder">: Chennai</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </section>
        <!-- Second Review Ends Here -->
    </div>
</div>

@include('v1.Includes.Footer')