@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
    @include('v1.Includes.TopMenu')

    <div class='page-content bg-added'>
        <div class='container-fluid'>

            @include('v1.Includes.PageTitleBox')

            <!-- First Review Start Here -->
            <div class='row justify-content-center'>
                @include('v1.Includes.StatusToast')
                <div class='col-lg-12'>

                    <div class='mi-card'>
                        <div class='mi-card-body'>

                            <div class='mi-card-inner-header'>
                                <button class='btn btn-add-edit'>
                                    <i data-feather='plus' class='menu-icon-form enable-plus'></i>
                                    <i data-feather='minus' class='menu-icon-form d-none enable-minus'></i>
                                    <span class='text-update-add-edit'>Add Videos</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateVideos();return false;'>
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                             <div class='details-card'>
                                        <h3>Video Details</h3>
                                    <div class="mi-form-area-container">
                                        <div class="mi-grid-3-layout">
                                    
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label'>Title</label>
                                        <input type='text' class='form-control spl input-only' id='title' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom02' class='form-label'>Description</label>
                                        <input type='text' class='form-control spl input-only' id='description' value='' />

                                    </div>
                                    <div class=''>
                                        <label for='validationCustom03' class='form-label'>Video API Link</label>
                                        <input type='text' class='form-control spl input-only' id='videoLink' />

                                    </div>
                                </div>
                            </div>
                        </div>
                                <div class="mi-flex-auto-layout">
                                    <div class='col-md-4' id="other-resources">
                                        <div class="video-link-card">
                                            <div class="">
                                                <label for='validationCustom03' class='form-label'>Title</label>
                                                <input type='text' class='form-control spl input-only' id='other-title' />
                                            </div>
                                            <div class="">
                                                <label for='validationCustom03' class='form-label'>URL</label>
                                                <input type='text' class='form-control spl input-only' id='other-url' />
                                            </div>
                                                    <div class='video-action-btn'>
                                                        <i data-feather='plus-circle' stroke-width="2.5" color="green" class='menu-icon-form-td-i cursor-pointer' onclick='addInput(this)'></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <div class='col-12 display-flex-space'>
                                        <div class='col-md-6'>
                                            <button class='btn btn-primary first button-add-edit' type='submit'>Add</button>
                                        </div>
                                        <div class='col-md-6'>
                                            <button class='btn btn-primary cancel' type='button'>Cancel</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- First Review End Here -->


            <!-- Second Review Starts Here -->

            <div class='row mi-table-space'>
                <div class='col-12'>
                    <div class='mi-card'>
                        <div class='mi-card-body card-pads'>
                            <table id='datatable-buttons' class='table-datatable table table-striped table-bordered dt-responsive nowrap' style='border-collapse: collapse; border-spacing: 0; width: 100%;'>
                                <thead>
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if (count($videos) > 0) {

                                        foreach ($videos as $sepVideos) {

                                    ?>
                                            <tr id='row-<?= $i ?>'>
                                                <td><?= $i ?></td>
                                                <td><?= $sepVideos->vdTitle ?></td>
                                                <td><?= $sepVideos->vdDescription ?></td>
                                                <td class='status'><?= $sepVideos->vdIsStatus ? '<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                                <td data-json='<?= json_encode($sepVideos) ?>'><i data-feather='edit' color="#006FEF" class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>' onclick='editVideo(this)'></i><i onclick="return changeStatus('videos', '<?= $sepVideos->vdId ?>', 'row-<?= $i ?>')" data-feather='power' color="#FF3B28" class='menu-icon-form-td-i cursor-pointer'></i></td>
                                            </tr>
                                    <?php
                                            $i++;
                                        }
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <input type='hidden' id='row-count' value='<?= $i ?>' />
            </div>
            <!-- Second Review Ends Here -->

        </div>
    </div>
</div>

@include('v1.Includes.Footer')