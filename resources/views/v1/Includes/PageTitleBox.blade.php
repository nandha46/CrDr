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
                <div class='col-auto align-self-center'>
                    <a href='#' class='btn btn-sm btn-outline-primary' id='Dash_Date'>
                    <span class='ay-name' id='Day_Name'>Today:</span>&nbsp;
                    <span class='' id='Select_date'>Jan 11</span>
                    <i data-feather='calendar' class='align-self-center icon-xs ms-1'></i>
                    </a>
                    
                </div>
                <?php
                }
                ?>
            </div>                                                            
        </div>       
    </div>
</div>