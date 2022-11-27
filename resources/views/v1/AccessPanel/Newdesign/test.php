<div class="test-space">
    <div class="course-subject-container">
        <div class="course-header">
            <p class="text-xl dark">{{$courseNm}}</p>
            <p class="text-sm slate">{{$units}} units</p>
        </div>
        <div class="subject-unit-list">
            <?php
            $i = 1;
            foreach ($courseDet as $key => $sepCourseDet) {
            ?>
                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <div class="accordion-item no-border">
                        <div class="course-card" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target={{ $i == '1' ? "#panelsStayOpen-collapseOne" : ($i == 2 ? "#panelsStayOpen-collapseTwo" : "#panelsStayOpen-collapseThree") }} aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                            <div class="course-details">
                                <div class="course-image">
                                    <img class="pdf-icon" src="{{asset("./images/book2.svg")}}" alt="" />
                                </div>
                                <div class="subject-details">
                                    <p class="text-md dark"><?= $key ?></p>
                                    <p class="text-xs slate d-none">Unit 1</p>
                                </div>
                            </div>
                            <div class="action-icon">
                                <i class='bx bx-chevron-down bx-sm'></i>
                            </div>
                        </div>

                        <?php

                        foreach ($sepCourseDet as $sepSepCourseDet) {
                        ?>
                            <div id={{ $i == '1' ? "panelsStayOpen-collapseOne" : ($i == 2 ? "panelsStayOpen-collapseTwo" : "panelsStayOpen-collapseThree") }} class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body mi-custom-acc-body">
                                    <div class="unit-card" data-value='<?= json_encode($sepSepCourseDet); ?>' onclick="GetLessonVideo(this)">
                                        <p class="text-xs slate"><?= $sepSepCourseDet->lessonOrder ?></p>
                                        <p class="text-md dark"><?= $sepSepCourseDet->lessonName ?></p>
                                    </div>
                                </div>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            <?php
                $i++;
            }
            ?>
        </div>
    </div>
</div>