let _token = $('meta[name="csrf-token"]').attr('content');
const successLog = 'font-size:20px; color: green; font-style: italic; padding: 4px';
const errorLog = 'font-size:20px; color: red; font-style: italic; padding: 4px';
const infoLog = 'font-size:20px; color: blue; font-style: italic; padding: 4px';
// let baseURL = 'http://localhost/hopefoundation';

$(function(){

     let list = $(".pagination").children("li");
     list.first().children("span").text("Previous");
     list.first().children("a").text("Previous");
     list.last().children("a").text("Next");
     list.last().children("span").text("Next");

     localStorage.clear()
    sessionStorage.clear()

     let questionList = $('#qList');
     let testid = $('#data-holder').attr('data-testid');
     if(testid != undefined){
       document.getElementById('navbar').style.pointerEvents = 'none';
       document.getElementsByClassName('hf-header')[0].style.pointerEvents = 'none';
     }
     if(questionList.length > 0){
       let ansMap = sessionStorage.getItem('answers');
       if(ansMap == null || ansMap == ''){
        console.log('nothing to load from session')
       } else {
        ansMap = new Map(Object.entries(JSON.parse(ansMap)));
        if(ansMap.has('test_id') && ansMap.get('test_id') == testid){
          console.log('answers present for the current test')
          ansMap.forEach((answer, sno) => {
            let target_tag = $(`[data-qid |='${answer.id}']`)
            target_tag.find(`input[name="flexRadioDefault${answer.serial}"][value="${answer.answer}"]`).prop('checked','checked')
            target_tag.find(`input[id="text-ans"]`).val(answer.answer);
            target_tag.find(`textarea`).val(answer.answer);
            $('#answered-'+sno).parent().addClass('marked');
        });
        }      
       }
    } 
    });


const youtubeOnLoadTest = () => {
    var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '390',
          width: '640',
          videoId: 'M7lc1UVf-VE',
          playerVars: {
            'playsinline': 1
          },
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }

      function onPlayerReady(event) {
        event.target.playVideo();
      }

      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
          done = true;
        }
      }
      function stopVideo() {
        player.stopVideo();
      }
}

const videoIdChange = () => {

    // get video id to be dynamically change

    $.get("/video-id/api", function(videoID, status){
        console.log("videoId: " + videoID + "\nStatus: " + status);

        player.cueVideoById({videoId:String,
            startSeconds:Number,
            endSeconds:Number});  
    });

      
}

const playerControl = (e) => {
    // Player controls shown below player div bcoz 
    if ($(e).val == 1){
        player.playVideo();
    } else {
        player.pauseVideo()
    }
}

playerSeekControl = () => {

    // Abstraction to allow player to only go backward and not forward
    player.seekTo(seconds, false);
}

playerCurrentTime = () => {
    // get player time for current student so we can seek to that point next time

   let time =  player.getCurrentTime();
   $.post("store-video-time/api", function(videoID, status){
    console.log("videoId: " + videoID + "\nStatus: " + status);  
});
}

const GetLessonVideo = (e) => {
   let jData = $(e).attr('data-value');
   $('.unit-card').removeClass('active');
   $(e).addClass('active');
   let pData = JSON.parse(jData);
   if(pData.topics.length == 0){
    $('#vidModal').modal('toggle')
    return;
    }
    let topics = pData.topics;
    let videoid = topics[0].videoid;
    if (videoid.lastIndexOf('/') != 16){
        return;
    }
    
    let pdftag = $('#pdf-list');
    pdftag.empty();
    
    topics.forEach(topic => {
        let docs = topic.docs;
        if(docs.length == 0){
            $('#image-space').empty().append(`<div class='carousel-item active'><img class='img-size' src="${baseUrl}images/no-image.png" alt='First slide' /> </div>`)
        } else {
            $('#image-space').empty()
        }  
        let i = 0;
        let active = '';
        docs.forEach((doc) => {
            if(i == 0) {
                active = 'active'; 
            } else {
                active = '';
            }
            if(doc.doc_type == 'IMAGE'){
                $('#image-space').append(`<div class='carousel-item ${active}'> <img class='img-size' src='${baseUrl}storage/${doc.docResource}' alt='slide-${i++}' /> </div>`);
            } else {
                let pdfDiv = `<div class="pdf-card" data-pdf-download='${baseUrl}storage/${doc.docResource}' data-name='${doc.docTitle}' onclick="downloadPdf(this)">
                <div class="pdf-icon">
                <img class="pdf-icon" src="${baseUrl}/images/new-design/results/pdf.png" alt="image">
                </div>
                <div class="video-content">
                   <p class="text-md dark">${doc.docTitle}</p>
                </div>
             </div>`;
                    pdftag.append(pdfDiv);
            }
        });
    });

    let videoSpace = $('.footage-space');
    videoSpace.empty();
    
    let moreVideos = $('#videoSec');
    moreVideos.empty();

    let i = 1;
    while(i < topics.length){
        let vidListTag = `<div class="video-card">
        <div class="image-space">
           <img class="video" data-src="${topics[i].videoid}" src='${baseUrl}/images/new-design/video/video_play.png' onclick="playVideo(this);"/>
        </div>
        <div class="video-content">
           <p class="text-md dark" title="${topics[i].name}">${topics[i].name}</p>
           <p class="text-sm slate d-none">Lorem ipsum dolor sit amet consectetur</p>
        </div>
     </div>`;
        moreVideos.append(vidListTag);
    i++;
    }
    $('#video-count').empty().text(`${--i} Videos`);
   videoid = videoid.substr(17); 
   videoSpace.prepend(`<iframe width="100%" height="400px" src="https://www.youtube.com/embed/${videoid}?controls=0&modestbranding=1&rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>`);
}

const listTests = current => {
    let standard_id = $(current).attr('data-standard-id');
    let subject_id = $(current).attr('data-subject-id');

    let msg = `%c std: ${standard_id} subject: ${subject_id}`;

    console.log(msg, successLog)

    $.ajax({
        url 	: baseUrl + 'api/v1/test-lists',
		type 	: 'POST',
		dataType: 'json',
		data 	: {
            _token : _token,
            standard_id: standard_id,
            subject_id:subject_id
		},
        encode 	: !0
	}).done( (t) => {
        if(t.success){
            if(t.exams.length != 0){
                let listTag = $('#test-list');

                if(listTag.length == 0){
                    console.log(listTag.length)
                    return;
                } 

                listTag.empty();

                t.exams.forEach(exam => {
                    let listHtml = `<div class="card mb-3">
                    <div class="card-body">
                      <div class="d-flex flex-column flex-lg-row">
                        <span class="avatar avatar-text rounded-3 bg-info me-4 mb-2">TEST</span>
                        <div class="row flex-fill">
                          <div class="col-sm-5">
                            <h4 class="h5">${exam.name}</h4>
                            <span class="badge bg-secondary">ALL SECTIONS</span> <span class="badge bg-success">${exam.passing_marks} Marks To Pass</span>
                          </div>
                          <div class="col-sm-4 py-2">
                            <span class="badge bg-secondary">${exam.no_of_questions} Questions</span>
                            <span class="badge bg-secondary">STARTS AT ${exam.start_time}</span>
                            <span class="badge bg-secondary">ENDS AT ${exam.end_time}</span>
                          </div>
                          <div class="col-sm-3 text-lg-end">
                            <a href="${baseUrl}online-test/${exam.id}" onclick="return confirm('Are you ready to Start the Test?');" class="btn btn-primary">Start</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>`;
                    listTag.append(listHtml);
                });
            }
         $('#testListModal').modal('toggle');   
        }

    }).fail( (t)=>{   
        console.error('%c error loading test', errorLog)
	    if(t.status == '401' || t.status == '419'){
            window.location.href = window.location.href;
		}
    });
}

const playVideo = current => {
    let vData = $(current).attr('data-src');
    let videoSpace = $('.footage-space');
    videoSpace.empty();
    let videoid = vData.substr(17);
    videoSpace.prepend(`<iframe width="100%" height="400px" src="https://www.youtube.com/embed/${videoid}?controls=0&modestbranding=1&rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>`);
}

function random(num) {
    return Math.floor(Math.random()*num)
  }

function getRandomStyles() {
    var r = random(255);
    var g = random(255);
    var b = random(255);
    var mt = random(200);
    var ml = random(50);
    var dur = random(10)+5;
    return `
    background-color: rgba(${r},${g},${b},0.7);
    color: rgba(${r},${g},${b},0.7); 
    box-shadow: inset -7px -3px 10px rgba(${r-10},${g-10},${b-10},0.7);
    margin: ${mt}px 0 0 ${ml}px;
    animation: float ${dur}s ease-in infinite
    `
  }
  
  function createBalloons(num) {
    var balloonContainer = document.getElementById("balloon-container")
    for (var i = num; i > 0; i--) {
    var balloon = document.createElement("div");
    balloon.className = "balloon";
    balloon.style.cssText = getRandomStyles();           
    balloonContainer.append(balloon);
    }
  }

/*==================== SHOW NAVBAR ====================*/
const showMenu = (headerToggle, navbarId) => {
    const toggleBtn = document.getElementById(headerToggle),
    nav = document.getElementById(navbarId)

    /**
     * Need to check if toggleBtn exist insted of headerToggle 
     * */ 

    if(toggleBtn == null) return;

    // Validate that variables exist
    if(headerToggle && navbarId){
        toggleBtn.addEventListener('click', ()=>{
            // We add the show-menu class to the div tag with the nav__menu class
            nav.classList.toggle('show-menu')
            // change icon
            toggleBtn.classList.toggle('bx-x')
        })
    }
}
showMenu('header-toggle','navbar')

/*==================== LINK ACTIVE ====================*/
const linkColor = document.querySelectorAll('.nav__link')

function colorLink(){
    linkColor.forEach(l => l.classList.remove('active'))
    this.classList.add('active')
}

linkColor.forEach(l => l.addEventListener('click', colorLink));

const downloadPdf = (current) => {
 let url = $(current).attr('data-pdf-download')
  const a = document.createElement('a')
  a.href = url
  a.download = $(current).attr('data-name')
  document.body.appendChild(a)
  a.click()
  document.body.removeChild(a)
}
