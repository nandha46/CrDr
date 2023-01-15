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
                                    <span class='text-update-add-edit'>Add Blogs</span></button>
                            </div>

                            <div class='form-add-edit mi-card-inner-body d-none'>

                                <p class='msg-to-view d-none'></p>

                                <form class='row g-3 needs-validation' method='post' action='' onsubmit='AddUpdateBlogs();return false;' >
                                    @csrf
                                    <input type='hidden' id='_id' class='input-only' value=''>
                                    <input type='hidden' class='input-only current-row' value=''>
                                <div class="mi-form-area-container">
                                    <div class='mi-grid-4-full-layout'>
                                    <div class=''>
                                        <label for='validationCustom04' class='form-label required'>Category</label>
                                        <select class='form-select spl' id='cat-id' onchange = 'return changeUserType()'>
                                            <option selected disabled value=''>Choose...</option>
                                            @if(blogCategory)
                                            @foreach(blogCategory as $index=>$cat)
                                            <option value='{{$index}}'>{{$cat}}</option>
                                            @endforeach
                                            @endif
                                        </select>
                                    </div>

                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Title</label>
                                        <input type='text' class='form-control spl input-only' id='title' value='' />
                                    </div>
                                    <div class='upload-field'>
                                        <label class='form-label'>Upload Images/Files (Max size 10MB)</label>
                                        <div class='input-group mb-3'>
                                            <input type='file' class='form-control input-only mi-upload-padding' id='file' name='file[]' multiple='true' />
                                            {{-- <label class='input-group-text' for='file'>Upload</label> --}}
                                        </div>

                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Description</label>
                                        <textarea class="form-control" rows="5" id="description" value='' placeholder="Enter the blog description here..."></textarea>
                                    </div>
                                    <div class=''>
                                        <label for='validationCustom01' class='form-label required'>Overall Message</label>
                                        <textarea class="form-control" rows="5" id="message" value=''></textarea>
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
                                        <th>No</th>
                                        <th>Title</th>
                                        <th>Category</th>
                                        <th>Description</th>
                                        <th>Overall Message</th>
                                        <th>Status</th>
                                        <th>Operation</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    if(count($blogs) > 0){

                                        foreach($blogs as $sepBlogs){          
                                    ?>
                                        <tr id = 'row-<?= $i ?>'>
                                            <td><?= $i ?></td>
                                            <td><?= $sepBlogs->title ?></td>
                                            <td><?= blogCategory[$sepBlogs->categoryid] ?></td>
                                            <td><?= $sepBlogs->description ?></td>
                                            <td><?= $sepBlogs->message ?></td>
                                            <td class='status'><?= $sepBlogs->status?'<span class="badge bg-success text-bg-success">Active</span>':'<span class="badge bg-danger text-bg-success">In-Active</span>' ?></td>
                                            <td>
                                                <i color="blue" data-feather='edit' data-toggle="tooltip" title='Edit' class='menu-icon-form-td-i cursor-pointer' id='column-td-<?= $i ?>'  onclick='editBlog({{$sepBlogs->id}}, {{$i}})'></i>
                                                <i color="red" data-toggle="tooltip" title="Change Status" onclick ="return changeStatus('blogs', '<?= $sepBlogs->id ?>', 'row-<?= $i ?>')" data-feather='power' class='menu-icon-form-td-i cursor-pointer'></i>
                                                <i color="purple" data-bs-toggle="modal" data-bs-target="#blogModal" data-toggle="tooltip" title="View Additional Details" onclick ="generateBlogModal(<?= $sepBlogs->id ?>)" data-feather='eye' class='menu-icon-form-td-i cursor-pointer'></i>
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
{{-- Modal Star --}}
<div class="modal" id="blogModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Blog Post Name</h4>
        </div>
        <div class="card" style="margin: 0%">
            <img class="card-img-top" src="{{asset('./images/programs media/cultural.jfif')}}" alt="Event Image" id="event_id" style="width:100%">
            <div class="card-body" id="modal-footer">
            </div>
          </div>  
      </div>
    </div>
  </div>
{{-- Modal End --}}
        </div>
    </div>
</div>

@include('v1.Includes.Footer')