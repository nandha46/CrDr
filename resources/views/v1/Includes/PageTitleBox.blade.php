<div class='row'>
    <div class='col-sm-12'>
        <div class='page-title-box'>
            <div class='row'>
                <div class='col'>
                    <ol class='breadcrumb'>
                        <li class='breadcrumb-item'><a href='javascript:void(0);'><?= $pageRootTitle ?></a></li>
                        <li class='breadcrumb-item <?= $pageSubTitleNext ? 'active' : '' ?>'>{{$pageSubTitle}}</li>
                        
                        @if($pageSubTitleNext)
                            <li class='breadcrumb-item'>{{$pageSubTitleNext}}</li>
                        @endif
                    </ol>
                </div>

                <?php

                if($pageRootTitle == 'Reports' || $pageRootTitle == 'Dashboard' ){
                ?>
                
                <?php
                }
                ?>
            </div>                                                            
        </div>       
    </div>
</div>