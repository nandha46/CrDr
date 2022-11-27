const submitTest = () => {

    let testAnswer = sessionStorage.getItem('answers');
    let totalQuestions = $('#data-holder').attr('data-questions-count');
    let testid = $('#data-holder').attr('data-testid');
    
    if(testAnswer == null || testAnswer == ''){
        console.warn('No questions answered')
        alert("Tests cannot be submitted without answering questions")
        return;
    } else {
        let ansMap = new Map(Object.entries(JSON.parse(testAnswer)));
        if (ansMap.has('test_id') && (ansMap.get('test_id') == testid)){
       try {
        $.ajax({
            url 	: baseUrl + 'online-test/submission',
            type 	: 'POST',
            dataType: 'json',
            data 	: {
                _token : _token,
                testAnswer: testAnswer,
                totalQuestions: totalQuestions,
                testid: testid,
            },
            encode 	: !0
        }).done( (t) => {
    
            if(t.success){
                    let award = 'super';
                    let greet = 'Need to Improve';
                    let greetPNG = 'sad';
                    let text = 'You have tried but need more exfort!';
                    let fail = `<a class="video-button small-space" onclick="tryAgain()">Try Again <i class="bx bx-rotate-right"></i></a>`;
                if(t.score/t.total > 0.75){
                    award = 'award';
                    greet = 'Congratulations';
                    greetPNG = 'cele';
                    text = 'You did a great job in the test!';
                    fail = '';
    
                } else if (t.score/t.total > 0.5){
                    award = 'award';
                    greet = 'Wow Superb';
                    greetPNG = 'happy';
                    text = 'You did a great job in the test!';
                    fail = '';
                }
    
                let tableCells = '';
    
                t.result.forEach(result => {
                    tableCells += `<tr><th scope="row">${result.sno}</th>
                    <td>${result.question}</td>
                    <td>${result.marks}</td>
                    <td>${result.status}</td>
                    <td>${result.correctAnswer}</td> </tr>`;
                });
                
               let htmlContent = `<div id="balloon-container">
             <div class="result-area-container">
                <div class="result full-result">
                   <div class="result-image-space">
                      <img src="${baseUrl}images/new-design/results/${award}.png" alt="image">
                   </div>
                   <div class="result-content t-center">
                      <h1 class="title-md text-header">${greet}<img class="emoji" src="${baseUrl}images/new-design/emoji/${greetPNG}.png" alt="cele"></h1>
                      <p class="text-md slate">${text} You have scored</p>
                   </div>
                   <div class="result-marks">
                      <div class="mark-card full">
                         <h1 class="mark-text-md">${t.score}</h1>
                         <p class="mark-text-sm dark">Out of ${t.total}</p>
                      </div>
                   </div>
                   <div class="result-actions">
                        ${fail}
                      <a class="video-button try small-space" href="${baseUrl}home">
                      Take Another Test
                      <i class='bx bxs-chevron-right'></i>
                      </a>
                   </div>
                </div>
                <div>
                <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Question</th>
                    <th scope="col">Mark</th>
                    <th scope="col">Status</th>
                    <th scope="col">Correct Answer</th>
                  </tr>
                </thead>
                <tbody>
                  ${tableCells}
                </tbody>
              </table>
                </div>
             </div>
          </div>`
                console.log('%c Test Successfully submitted', successLog)
                console.table(t.result)
                $(htmlContent).appendTo('#resultModal');
                $('#resultModal').modal('toggle');
                $('.test-area').addClass('d-none');
                createBalloons(15);
                window.scrollTo({ top: 0, behavior: 'smooth' });
                console.timeEnd('submit test')
            } else {
                console.log(`%c ${t.message}`, errorLog)
        }
        }).fail((t) => {
            console.error('%c error submitting test', errorLog);
            if(t.status == '401' || t.status == '419'){
                window.location.href = window.location.href;
            }
        })
       } catch (err){
        console.error(err)
       }
       }
    }
}

const tryAgain = () => {
    sessionStorage.clear()
    window.location.href = window.location.href;
}

const writeToMapSession = (ans) => {
    let testid = $('#data-holder').attr('data-testid');
    let ansMap = sessionStorage.getItem('answers');
    if(ansMap == null || ansMap == ''){
        console.log('session storage empty. Initializing...')
        let tempMap = new Map();
        tempMap.set('test_id', testid);
        tempMap.set(ans.serial,ans);
        sessionStorage.setItem('answers',JSON.stringify(Object.fromEntries(tempMap)));
    } else {
        ansMap = new Map (Object.entries(JSON.parse(ansMap)));
        if (ansMap.has('test_id') && (ansMap.get('test_id') == testid)){
            console.log('answers found for current test..')
            ansMap.set(ans.serial,ans);
            sessionStorage.setItem('answers',JSON.stringify(Object.fromEntries(ansMap)));
        } else if (ansMap.has('test_id') && (ansMap.get('test_id') != testid)){
            console.log('answers found for previous test. so clearing it and initializing current test')
            ansMap.clear();
            ansMap.set('test_id', testid);
            ansMap.set(ans.serial,ans);
            sessionStorage.setItem('answers',JSON.stringify(Object.fromEntries(ansMap)));
        }
    }
        console.log(sessionStorage.getItem('answers'))
 }

const storeAns = (e) => {
    if(e.target.value != ''){
        let answer = e.target.value;
        let target_tag = $(e.target).parent().parent().parent();
        let qid = target_tag.attr('data-qid');
    if(qid){
            let serial = target_tag.attr('data-sno');
        $('#answered-'+serial).parent().addClass('marked');
        let obj = {
            serial: serial,
            id:qid,
            answer:answer
    };
        writeToMapSession(obj);
    } else {
        target_tag = target_tag.parent();
        qid = target_tag.attr('data-qid');
        let serial = target_tag.attr('data-sno');
        let answer = $(e.target).siblings('p').attr('data-value');
        $('#answered-'+serial).parent().addClass('marked');
        let obj = {
            serial:serial,
            id:qid,
            answer:answer
        };
        writeToMapSession(obj);
    }
        
    } else {
        let serial = $(e.target).parent().parent().parent().attr('data-sno');
        $(`#answered-${serial}`).parent().removeClass('marked');
    }
}
const textAns = document.querySelectorAll('#text-ans');
const radiAns  = document.querySelectorAll('#flexRadioDefault1');

textAns.forEach((element) => {
    element.addEventListener('change',storeAns);
});
radiAns.forEach((element) => {
    element.addEventListener('change',storeAns);
});