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
                                    <span class='text-update-add-edit'>Add Announcements</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateAnnouncements();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                            <div class="mi-form-area-container">
                                <div class='mi-grid-4-layout'>
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label required'>Type</label>
                                        <select class='form-select spl' id='typeid'>
                                            <option selected disabled value=''>Choose..</option>
                                            @if($types)
                                            @foreach($types as $index=>$type)
                                            <option value='{{$index}}'>{{$type}}</option>
                                            @endforeach
                                            @endif
                                        </select>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Title</label>
                                        <input type='text' class='form-control spl input-only' id='title' value='' />
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Message</label>
                                        <textarea class="form-control" rows="5" id="message" value='' placeholder="Enter the announcement message here..."></textarea>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom05' class='form-label'>Upload Images, Documents (Max size 10MB)</label>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only' id='file' name='file[]' multiple='true' />
                                        </div>
                                    </div>
                            </div>
                        </div>
                                    <div class='mi-btn-holder'>
                                        <button class='mi-btn mi-btn-primary button-add-edit' type='submit'>Add</button>
                                        <button class='mi-btn mi-btn-secondary' type='button'>Cancel</button>
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
                                        <th>Type</th>
                                        <th>Message</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($announcements) > 0){

                                        foreach($announcements as $sepAnnouncements){

                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepAnnouncements->title ?></td>
                                            <td><?= $sepAnnouncements->announcementType ?></td>
                                            <td><?= $sepAnnouncements->message ?></td>
                                            <td class='status'><?= $sepAnnouncements->status ?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td data-json='<?= json_encode($sepAnnouncements) ?>'>
                                                <i data-feather='edit' data-toggle="tooltip" title='Edit' color="blue" class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editAnnouncement({{$sepAnnouncements->id}}, {{$i}})'></i>
                                                <i color="red" data-toggle="tooltip" title="Change Status" onclick ="return changeStatus('announcements', '<?= $sepAnnouncements->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                                            </td>
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
                <input type='hidden' id='row-count' value = '<?= $i ?>'  />
            </div>
            <!-- Second Review Ends Here -->

        </div>
    </div>
</div>

@include('v1.Includes.Footer')