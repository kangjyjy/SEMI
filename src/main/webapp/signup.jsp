<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

    <!--  -->
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">
    <!-- Bootstrap core CSS -->
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">


    <style>
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');
@import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");
        
        :root{
            --header-height: 3rem;
            --nav-width: 68px;
            --first-color: #0080ff;
            --first-color-light: #AFA5D9;
            --white-color: #ffffff;
            --body-font: 'Nunito', sans-serif;
            --normal-font-size: 1rem;--z-fixed: 100
        }
        body::-webkit-scrollbar{
   			display: none; /* Chrome, Safari, Opera*/
  		}
        *,::before,::after{
            box-sizing: border-box
        }
        body{
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s;
            
        }
        a{
             text-decoration: none 
        }
        .header{
            width: 100%;
            height: var(--header-height);
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 1rem;
            background-color: var(--white-color);
            z-index: var(--z-fixed);
            transition: .5s
        }
        .header_toggle{
            color: var(--first-color);
            font-size: 1.5rem;
            cursor: pointer
        }
        .login{
           color:black;
        }
        .header_img{
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            border-radius: 50%;overflow: hidden
        }
        .header_img img{
            width: 40px
        }
        .l-navbar{
            position: fixed;
            top: 0;
            left: -30%;
            width: var(--nav-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }
        .nav{
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden
        }
        .nav2{
        
           flex-direction: row;
           justify-content: center;
        }
        .nav_logo, .nav_link{
            display: grid;
            grid-template-columns: max-content max-content;
            align-items: center;
            column-gap: 1rem;
            padding: .5rem 0 .5rem 1.5rem
        }
        .nav_logo{
            margin-bottom: 2rem
        }
        .nav_logo-icon{
            font-size: 1.25rem;color: var(--white-color)
        }
        .nav_logo-name{
            color: var(--white-color);
            font-weight: 700
        }
        .nav_link{
            position: relative;
            color: var(--first-color-light);
            margin-bottom: 1.5rem;
            transition: .3s
        }
        .nav-link2{
           color:black;
        }
        .nav_link:hover{
            color: var(--white-color)
        }
        .nav_icon{
            font-size: 1.25rem
        }
        .show1{
            left: 0
        }
        .body-pd{
            padding-left: calc(var(--nav-width) + 1rem)
        }
        .active{
            color: var(--white-color)
        }
        .active::before{
            content: '';
            position: absolute;
            left: 0;
            width: 2px;
            height: 32px;
            background-color: var(--white-color)
        }
        .height-100{
        	padding-top:50px;
            height:100vh;
            max-width:500px;
            margin:auto;         
        }
        
        
        @media screen and (min-width: 768px){
            body{
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav-width) + 2rem)
            }.header{
                 height: calc(var(--header-height) + 1rem);
                 padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
             }
            .header_img{
                width: 40px;height: 40px
            }
            .header_img img{
                width: 45px
            }
            .l-navbar{
                left: 0;
                padding: 1rem 1rem 0 0
            }
            .show1{
                width: calc(var(--nav-width) + 156px)
            }
            .body-pd{
                padding-left: calc(var(--nav-width) + 188px)
            }
        }

        /*  */
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        #cont{
            padding: 60px;
            border-radius:10px;
            border: 1px solid #f5f5f7;
            background-color: #f5f5f7;
        }
        #cont div{
            padding-left: 0px;
        padding-right: 0px;
        }
	.secondtext{
		font-size: 51px;
		font-family: 'Nanum Brush Script', cursive;
	}
		#textbox{
		width:400px; height:100px; 
        border:1px solid #009; margin:40px auto;
        text-align:justify; overflow:auto;
        border-radius:7px;
	}

	.signup_input{
		padding-top:10px;
        padding-left: 0px;
        padding-right: 0px;
        width: 100%;
	}
	#signin_btn{
		
		width:100%;
		height:50px;
		border-radius:10px;
		margin:auto;
	}
	#siginup_btn_area{
		padding-top:10px;
        padding-left: 0px;
        padding-right: 0px;
        width: 100%;
	}
    .input{
    }
    .input>input{
      width: 100%;
      border-radius:10px;
      border: 1px solid gray;
    }
    #acodian{
        padding-top: 40px; 
        padding-bottom: 40px; 
        
    }
    
    .card-details{
    position:relative;
    display:flex;
    
    padding-bottom:20px;
}
.card-details input{
    height:50px;
    width:100%;
    font-size:18px;
    background-color:white;
    color:black;
    padding:0px 20px;
    padding-left:50px;
    box-sizing:border-box;
    border-radius:10px;
/*     outline:none; */
    border:none;
}
.card-details i{
    position:absolute;
    left:10px;
    top:16px;
    color:black;
    font-size:18px;
}
.card-details span{
    position:absolute;
    width:20px;
    height:20px;
    background-color:#fff;
    border-radius:50%;
    color:#ffe4be;
    font-size:10px;
    
    right:10px;
    top:15px;
    opacity:0.4;
    display:flex;
    justify-content:center;
    align-items:center;
    cursor:pointer; 
}

.fa{
	color:black;
}

.card-details span:hover{
    opacity:1;
}
    /* div{border: 1px solid black;} */
    </style>
</head>
<body id="body-pd">
<header class="header" id="header">
    <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
    <div>
    <a href ="index.jsp">
    	<img src="/imgsrc/textlogo3.png">
    </a>
    </div>
    <div></div>
</header>
<ul class="nav nav2">
  <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/boardMain.jsp">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/gallery.jsp">여행후기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/jobMain.jsp" id="page">구인구직</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/foodMain.jsp">맛집</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/stayreview.jsp">숙소리뷰</a>
        </li>
</ul>
<div class="l-navbar" id="nav-bar">
    <nav class="nav">
        <div> <a href="/index.jsp" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표 <br>- 일상의 쉼표를 찍다</span> </a>
            <div class="nav_list">
                <a href="#" class="nav_link active"> <i class='bx bx-wind nav_icon'></i> <span class="nav_name">날씨</span> </a>
                <a href="/board/communityMain.jsp" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span class="nav_name">커뮤니티</span> </a>
                <a href="/board/editorReMain.jsp" class="nav_link"> <i class='bx bx-bus nav_icon'></i> <span class="nav_name">여행정보</span> </a>
                <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">마이페이지</span> </a>
                <a href="#" class="nav_link"> <i class='bx bx-calendar nav_icon'></i> <span class="nav_name">일정관리</span> </a>
                <a href="/board/stayreview.jsp" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소정보</span> </a>
                <a href="#" class="nav_link"> <i class='bx bx-message-alt-detail nav_icon'></i> <span class="nav_name">쪽지</span> </a>
            </div>
        </div>
        <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">로그아웃</span> </a>
    </nav>
</div>
<!--Container Main start-->
<div class="height-100 " align ="center">
	
		<div class="row " id="cont">
            <div class="col">
         	<div class="row signup_input">
         		<div class ="col-8 input">
                    <div class="card-details">
                        <input type="text" id="id-input" placeholder="아이디">
                        <i class="fa fa-user"></i>
                    </div>
         		</div>
         		<div class ="col-4">
         			<div>확인 문구</div>
         		</div>
         	</div>
         	<div class="row signup_input">
         		<div class ="col-8 input">
                    <div class="card-details">
                        <input type="password" id="password-input" placeholder="비밀번호">
                        <i class="fa fa-lock"></i>
                    </div>
         		</div>
         		<div class ="col-4">
         			<div>확인 문구</div>
         		</div>
         	</div>
         	<div class="row signup_input">
         		<div class ="col-8 input">
                    <div class="card-details">
                        <input type="password" id="password-input" placeholder="비밀번호 확인">
                        <i class="fa fa-lock-open"></i>
                        <span><small class="fa fa-eye-slash passcode"></small></span>
                    </div>
         		</div>
         		<div class ="col-4">
         			<div>확인 문구</div>
         		</div>
         	</div>
         	<div class="row signup_input">
         		<div class ="col-8 input">
                    <div class="card-details">
                        <input type="text" id="id-input" placeholder="이메일">
                        <i class="fa fa-envelope"></i>
                    </div>
         		</div>
         		<div class ="col-4">
         			<div>확인 문구</div>
         		</div>
         	</div>
         	<div class="row">
         		<div class="col" id="acodian">
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              이용약관
                            </button>
                          </h2>
                          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                회사는 회원 가입시 다음과 같이 개인정보를 수집에 대한 <br>
                                동의를 받고 있습니다. 가입자가 아래 내용을 읽고 동의를 <br>
                                선택하여 클릭하면 개인정보 수집에 대해 
                                <br>동의한 것으로 간주합니다.<br>


                                아래 내용은 수집하는 개인정보의 항목, 수집 및 이용 목적, 보유 및 이용 기간에 대한 안내이며 자세히 읽어보신 후 
                                <br>동의하여 주시기 바랍니다.<br>
                                
                                <br>
                                <strong>1. 수집하는 개인정보 및 이용 목적</strong>
                                <br>
                                <br>
                                회사는 이용자가 게시물 작성, 이벤트 참여, 상담 등의 <br>서비스를 이용하기 위하여 회원가입을 신청할 경우, 
                                <br>회사는 서비스 이용을 위해 필요한 최소한의 <br>개인정보를 수집합니다.
                                <br>
                                
                                - 수집 항목: ID, 비밀번호, 이메일 주소<br>
                                - 수집 목적: 회원제 서비스 이용, 본인 확인 및 개인 식별, <br>부정 이용 방지 등 회원 관리<br>
                                - 수집 목적: 중복 가입 방지, 부정 이용 방지,<br>
                                - 수집 목적: 회원관리, 부정 이용 방지, 오류 상황 확인,<br> 통계활용<br>
                                
                                2. 개인정보의 보유 및 이용기간<br>
                                회사는 회원이 회사가 제공하는 서비스를 받는 동안<br> 회원의 개인정보를 보유합니다.<br> 이용자의 개인정보는 원칙적으로 개인정보의 <br>수집 및 이용 목적이 달성된 시점에서 지체없이 파기합니다.
                            </div>
                          </div>
                        </div>
                       
                      </div>
                 </div>
         	</div>
         	<div class="row">
         		<div class="col-12">
         			<label><input type="radio" name="info" value="Y" checked>동의</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         			<label><input type="radio" name="info" value="N">거부</label>
         		</div>
         	</div>
         	<br>
         	<div class="row"  id="siginup_btn_area">         		
         		<button type="button" class="btn btn-primary" id ="signin_btn">회원가입</button>
         	</div> 	
        </div>
        </div>       
</div>
<!--Container Main end-->




<script>

    document.addEventListener("DOMContentLoaded", function(event) {

        const show1Navbar = (toggleId, navId, bodyId, headerId) =>{
            const toggle = document.getElementById(toggleId),
                nav = document.getElementById(navId),
                bodypd = document.getElementById(bodyId),
                headerpd = document.getElementById(headerId)

            // Validate that all variables exist
            if(toggle && nav && bodypd && headerpd){
                toggle.addEventListener('click', ()=>{
                    // show1 navbar
                    nav.classList.toggle('show1')
                    // change icon
                    toggle.classList.toggle('bx-x')
                    // add padding to body
                    bodypd.classList.toggle('body-pd')
                    // add padding to header
                    headerpd.classList.toggle('body-pd')
                })
            }
        }

        show1Navbar('header-toggle','nav-bar','body-pd','header')

        /*===== LINK ACTIVE =====*/
        const linkColor = document.querySelectorAll('.nav_link')

        function colorLink(){
            if(linkColor){
                linkColor.forEach(l=> l.classList.remove('active'))
                this.classList.add('active')
            }
        }
        linkColor.forEach(l=> l.addEventListener('click', colorLink))

        // Your code to run since DOM is loaded and ready
    });
    
 // input id, input pw, password eyes
    let outer_eye=document.querySelector(".card-details span");
    let eye=document.querySelector(".passcode");
    let input=document.querySelector("#password-input");
    outer_eye.addEventListener('click',function(){

       if(input.type=='password'){
           input.type="text"; 
           eye.classList.remove('fa-eye-slash');
           eye.classList.add('fa-eye');
         input.classList.add('warning');
        }else{
          input.type="password"; 
          eye.classList.remove('fa-eye');
          eye.classList.add('fa-eye-slash');
          input.classList.remove('warning');
      }
    });
</script>
</body>
</html>