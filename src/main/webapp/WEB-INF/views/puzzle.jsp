<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="author" content="changmin">
    <meta name="date" content="2022.09.29">
    <meta name="description" content="puzzle">

    <link rel="shortcut icon" href="../HTML05/favicon.ico" type="image/x-icon">
    <title>puzzle</title>

    <style>

body{
    	background-color: #001740;
    }

        table,
        tr,
        td,
        th {
            border: solid 1px;
            border-color: antiquewhite;
            background-color: rgb(131, 123, 147);
            box-sizing: border-box;
            border-collapse: collapse;
            /* 테이블의 선을 합친다. */
        }
       
 		#aaa1 {
            position: absolute;
            width: 40vw;
            height: 40vw;
        }
        img {
            position: absolute;
            width: 40vw;
            height: 40vw;
        }

        table {
            position: absolute;
        }

        div {
            overflow: hidden;
            position: relative;
            border: 1px solid wheat;
            box-sizing: border-box;
        }

        caption {
            margin: 10px;
        }

        #body {
            top: 1vw;
            left: 7vw;
            border: 0;
            width: 70vw;
            padding: 50px;
            box-sizing: border-box;
            border-radius: 30px;
            height: 200px;
            background-image: url(./resources/assets/images/banner/banner10.jpg);
            padding-left: 25vw;
         
        }

        #tm {
            box-sizing: border-box;
            float: left;
            width: 100px;
            height: 100px;
            color: antiquewhite;
            text-align: center;
            border-radius: 10%;
            line-height: 100px;
            font-size: 80px;
            border: 5px;
            border-style: groove;
            

        }

        #tm2 {
            box-sizing: border-box;
            float: left;
            color: antiquewhite;
            width: 50px;
            height: 100px;
            border: 0;
            text-align: center;
            line-height: 180px;
            margin-right:2vw;
        }

      

    </style>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>

<body>
    <div id="body">
        <div id="tm"><span id="mm">03</span></div>
        <div id="tm2">분</div>
        <div id="tm"><span id="ss">00</span></div>
        <div id="tm2">초</div>
    </div>

    <span id="aaa1"></span>
    
</body>

<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
<script>
    let mm = document.getElementById("mm");
    let ss = document.getElementById("ss");

    let min = 3;
    let sec = 0;
    let myTime;

        if(mm.innerHTML=='00' && ss.innerHTML=='00'){   
            }else{
       			myTime = setInterval(function () {          
            	sec--;
            if (sec < 0) {
                min--;
                sec = 59;
                if (min < 0) {

                    min = 0;
                    sec = 0;
                    clearInterval(myTime);
                    alert('타이머가 종료되었습니다.');
                    window.close();
				}
            }
            if (sec < 10) {
                sec = parseInt(sec);
                sec = "0" + sec;
            }
            if (min < 10) {
                min = parseInt(min);
                min = "0" + min;
            }
          
            ss.innerHTML = sec;
            mm.innerHTML = min;
        }, 1000)
    }

    let imgName = '${picUrl}';

    //let num = Number(prompt("퍼즐 개수를 입력해주세요(nXn)"));
    let num = ${level + 2};
	
    let a = document.getElementById('aaa1');
    let border = 2;
    
    let h = a.clientHeight;
    let w = a.clientWidth;

    let tbH = h / num;
    let tbW = h / num;
    let count = 0;
    let empCount = 0;

    let b = document.getElementById('a');
    let ig = document.getElementById('a');
    let tb = document.getElementById('a');
    let run = false;    // 손에 조각이 있는지 없는지
    let overRun = false;    // 테이블위에 마우스가 있는지 없는지
    let tbRun = false;
    let overCount = 0;
    let runCount = 0;
    let dvCount = 0;

    let overRun2 =false;
    let overCount2 = 0;
 

    let eX = 0;
    let eY = 0;
    let eX2 = 0;
    let eY2 = 0;

    let tbPos = [];
    let tbCheck = [];
    let tbCard = [];

    let tbPos2 = [];
    let tbCheck2 = [];
    let tbCard2 = [];
    
    let arr = new Array();
    arr[0] = -1;
    for (let i = 0; i < num*num;) {
        let a = Math.floor(Math.random() * (num * num) + 1);
        for (let k in arr) {
            if (arr[k] == a) {
                break;
            } else if (k == arr.length - 1) {
                arr[arr.length] = a;
                i++;
                break;
            } else {
            }
        }
    }   

    // 빈 테이블 만들기
    document.write("<table id='tab0' style='left:10px; top:250px;'>");
    for (let i = 1; i <= num; i++) {
        document.write("<tr>")
        for (let j = 1; j <= num; j++) {
            
            empCount++;
            document.write("<td id='tbl" + empCount + "' style='height:" + tbH + "px; width:" + tbW + "px;' > </td>");
            // document.write("<div id='dv"+count+"' style='height:"+  tbH + "px; width:"+ tbW +"px; left:"+ (w+100+ (tbW*(j-1))) + "px; top :" + (tbH*(i-1))+ "px;' onclick='drag("+count +")' ><img id='ig"+count +"' src='../image/panda.png' alt='사진' height='500px' style='left:"+ -(tbW*(j-1))  +"px; top:"+ -(tbH*(i-1)) +"px; '></div>");
            //div 스타일 left:"+ (w+100+ (tbW*(j-1))) + "px; top :" + (tbH*(i-1))+ "px;  onclick='drag("+count +")'
        }
        document.write("</tr>")
    }
    document.write('</table>');
    // --

    document.write("<table id='tab' style='left:" + (w + 50) + "px; top:250px'>");
    for (let i = 1; i <= num; i++) {
        document.write("<tr>")
        for (let j = 1; j <= num; j++) {
            count++;
            let arrCount = arr[count];  // 랜덤 수 추출 (1~25), 이것을 각 조각의 넘버로 사용 (기존 count(1~25) 대체)
            let rcCount = arr[count] - 1;  // 랜덤 수 추출 (0~24) , 이 수를 이용해 조각 조각 나눈다 (기존의 i, j를 대체)
            let rowNum = parseInt(rcCount/num);    // 기존의 행번호 i를 랜덤 수 기준으로 추출  (기존 i : 1~5 / rowNum : 0~4 인것 주의!)
            let colNum = rcCount%num;    // 기존의 열번호 j를 랜덤 수 기준으로 추출  (기존 j : 1~5 / colNum : 0~4 인것 주의!)
            document.write("<td id='tb" + arrCount + "' style='height:" + tbH + "px; width:" + tbW + "px;' > <div onmouseover=\"divOn('" + arrCount + "')\" onmouseout='divOut()' id='dv" + arrCount + "' style='height:" + tbH + "px; width:" + tbW + "px;'><img id='ig" + arrCount + "' src='"+ imgName+"' alt='사진' style='left:" + -(tbW * colNum) + "px; top:" + -(tbH * rowNum) + "px; position:relative;'></div></td>");
        }
        document.write("</tr>")
    }
    document.write('</table>');

    // 기존 랜덤이 적용 안된 코드
    // document.write("<table id='tab' style='left:" + (w + 100) + "px; top:1vW'>");
    // for (let i = 1; i <= num; i++) {
    //     document.write("<tr>")
    //     for (let j = 1; j <= num; j++) {
    //         count++;
    //         document.write("<td id='tb" + count + "' style='height:" + tbH + "px; width:" + tbW + "px;' > <div onmouseover='divOn(" + count + ")' onmouseout='divOut()' id='dv" + count + "' style='height:" + tbH + "px; width:" + tbW + "px;'><img id='ig" + count + "' src='"+ imgName+"' alt='사진' height='500px' style='left:" + -(tbW * (j - 1)) + "px; top:" + -(tbH * (i - 1)) + "px; position:relative;'></div></td>");
    //         // document.write("<div id='dv"+count+"' style='height:"+  tbH + "px; width:"+ tbW +"px; left:"+ (w+100+ (tbW*(j-1))) + "px; top :" + (tbH*(i-1))+ "px;' onclick='drag("+count +")' ><img id='ig"+count +"' src='../image/panda.png' alt='사진' height='500px' style='left:"+ -(tbW*(j-1))  +"px; top:"+ -(tbH*(i-1)) +"px; '></div>");
    //         //div 스타일 left:"+ (w+100+ (tbW*(j-1))) + "px; top :" + (tbH*(i-1))+ "px;  onclick='drag("+count +")'
    //     }
    //     document.write("</tr>")
    // }
    // document.write('</table>');

    let posX = tab.style.left;
    let posY = tab.style.top;
    let posX2 = parseFloat(posX.substring(0, posX.length - 2));
    let posY2 = parseFloat(posY.substring(0, posY.length - 2));

    for (let i = 0; i < num * num; i++) {
        let x = i % num;
        let y = parseInt(i / num);

        tbPos[i + 1] = [parseFloat(posX2 + (tbW * (x))+border), parseFloat(posX2 + (tbW * (x + 1))+border), parseFloat(posY2 + (tbH * (y))+border), parseFloat(posY2 + (tbH * (y + 1))+border)];
        tbCheck[i + 1] = false;
        tbCard[i + 1] = i + 1; 
       
    }

    // 빈테이블 위치 정보 추가
    let posXemp = tab0.style.left;
    let posYemp = tab0.style.top;

    let posX2emp = parseFloat(posXemp.substring(0, posXemp.length - 2));
    let posY2emp = parseFloat(posYemp.substring(0, posYemp.length - 2));

    for (let i = 0; i < num * num; i++) {
        let x = i % num;
        let y = parseInt(i / num);

        
        tbPos2[i + 1] = [parseFloat(posX2emp + (tbW * (x))+border), parseFloat(posX2emp + (tbW * (x + 1))+border), parseFloat(posY2emp + (tbH * (y))+border), parseFloat(posY2emp + (tbH * (y + 1))+border)];
        tbCheck2[i + 1] = true;
        tbCard2[i + 1] = 0; 
        
    }


    window.addEventListener('mousedown', (function (e) {

        eX2 = parseFloat(e.clientX);
        eY2 = parseFloat(e.clientY);
        eX = e.pageX;
        eY = e.pageY;

        console.log( eX+"/"+ eY);
        console.log( posX+"/"+ posY);
        console.log( (parseFloat(posX2)+w +border*num)+"/"+ (parseFloat(posY2)+h));
        console.log( eX+"/"+ eY);
        console.log( posX+"/"+ posY);
        console.log( posX2+"/"+ (parseFloat(posY2)+h +border*num));


        for (let i = 1; i <= num * num; i++) {
            if (eX2 > tbPos[i][0] && eX2 < tbPos[i][1] && eY2 > tbPos[i][2] && eY2 < tbPos[i][3]) {
                overCount = arr[i];
                overRun = true;
            }
        }

        // 빈테이블 위에 있을때, 위에있다(overRun), 몇번 테이블위치다(overCount) 확인
        for (let i = 1; i <= num * num; i++) {
            if (eX2 > tbPos2[i][0] && eX2 < tbPos2[i][1] && eY2 > tbPos2[i][2] && eY2 < tbPos2[i][3]) {
                overCount2 = i;     // overCount2 : 빈테이블 빈칸 번호
                overRun2 = true;    // 빈테이블 위에 있을때
            }
        }


        console.log(overCount);
        console.log(overRun);

        // 기존 랜덤 쓰기 전 위치 저장 코드
        // for (let i = 1; i <= num * num; i++) {
        //     if (eX2 > tbPos[i][0] && eX2 < tbPos[i][1] && eY2 > tbPos[i][2] && eY2 < tbPos[i][3]) {
        //         overCount = i;
        //         overRun = true;
        //         // 마우스가 테이블 위에 위치할 때,
        //         // 테이블의 위치(OverCount)획득
        //         // if (!run) {
        //         //     runCount = i;
        //         //     // 처음 집을때 runCount(사진의 번호) 획득
        //         // }
        //     }
        // }

        
        if (eX2 < posX2 || eX2 > posX2 + w +border*num || eY2 < posY2 || eY2 > posY2 + h +border*num) {
            overRun = false;
            console.log('오버런 거짓1');
        }

        // 빈테이블 바깥에 있을때의 조건 추가
        if (eX2 < posX2emp || eX2 > posX2emp + w+border*num || eY2 < posY2emp || eY2 > posY2emp + h +border*num) {
            overRun2 = false;
            console.log('오버런 거짓2');
        }

        if (run) {
            // 놓기

            if (overRun && tbCheck[overCount]) {
                // 내부 없는곳에 놓기

                b = document.getElementById('dv' + runCount);
                ig = document.getElementById('ig' + runCount);
                tb = document.getElementById('tb' + overCount);
                let igL = ig.style.left;
                let igT = ig.style.top;
                tbCard[overCount] = runCount;  // 넣은 카드 번호(count)와 테이블 번호(count) 가 일치하지 않으면 다른 카드가 들어간 것! (집을때 구분해야하므로 지정)


                ig.remove();
                b.remove();
                tb.innerHTML = "<div onmouseover='divOn(" + runCount + ")' onmouseout='divOut()' id='dv" + (runCount) + "' style='height:" + tbH + "px; width:" + tbW + "px;' ><img id='ig" + (runCount) + "' src='"+imgName+"' alt='사진' style='left:" + igL + "; top:" + igT + "; position:relative;'></div>";
                tbCheck[overCount] = false;
                run = false;
                overRun = false;

            } else if (overRun) {
                // 내부 있는곳에 놓기 (못 놓게 하기)
                overRun = false;


            } else if(overRun2 && tbCheck2[overCount2]){
                // 빈테이블 없는곳에 놓기
                b = document.getElementById('dv' + runCount);
                ig = document.getElementById('ig' + runCount);
                tb = document.getElementById('tbl' + overCount2);
                let igL = ig.style.left;
                let igT = ig.style.top;
                tbCard2[overCount2] = runCount;  // 넣은 카드 번호(count)와 테이블 번호(count) 가 일치하지 않으면 다른 카드가 들어간 것! (집을때 구분해야하므로 지정)

                ig.remove();
                b.remove();
                tb.innerHTML = "<div onmouseover='divOn(" + runCount + ")' onmouseout='divOut()' id='dv" + (runCount) + "' style='height:" + tbH + "px; width:" + tbW + "px;' ><img id='ig" + (runCount) + "' src='"+imgName+"' alt='사진' style='left:" + igL + "; top:" + igT + "; position:relative;'></div>";
                tbCheck2[overCount2] = false;
                run = false;
                overRun2 = false;

                let compl = 0;
                for (let i = 1; i <= num * num; i++) {
                    let x = i % num;
                    let y = parseInt(i / num);
                    
                    if(tbCard2[i] != i){
                        compl++;
                    }
                }
                if(compl == 0){
                	
                    $.ajax({
                    	type : "POST",
            			url : "pzSuccess",
            			data : {	
            				"loginId" : "${loginId}",
            				"level" : "${level}"
            			},
            			dataType : "text",
            			success : function(result){
            			},
            			error : function(){
            			}
                    });
                	
                    alert('축하합니다 성공하셨습니다!');
                    window.close();   
                }

            } else if(overRun2){
                // 빈테이블 있는곳에 못놓게 하기

                overRun2 = false;
            }
            else {
                // 외부에 놓기
                overRun = false;
                overRun2 = false;
                run = false;

            }
        } else {
            // 집기

            if (overRun) {
                
                if(tbCard[overCount] == 0){
                    // 테이블 없는 자리에 클릭했을때
                    overRun = false;


                }else{
                    // 다른 조각 넣었던 것 빼기
                    
                    ig = document.getElementById('ig' + tbCard[overCount]);
                    tb = document.getElementById('tb' + overCount);
    
                    let igL = ig.style.left;
                    let igT = ig.style.top;
    
                    tb.innerHTML = "";
                    $('body').append("<div onmouseover=\"divOn('" + tbCard[overCount] + "')\" onmouseout='divOut()' id='dv" + tbCard[overCount] + "' style='height:" + tbH + "px; width:" + tbW + "px; left:" + (eX2 - (tbW / 2)) + "px; top:" + (eY2 - (tbH / 2)) + "px; position:absolute;' ><img id='ig" + (tbCard[overCount]) + "' src='"+imgName+"' alt='사진' style='left:" + igL + "; top:" + igT + "; position:relative;'></div>");
                    b = document.getElementById('dv' + (tbCard[overCount]));
                    
                    runCount = tbCard[overCount];

                    tbCard[overCount] = 0;
    
                    tbCheck[overCount] = true;
                    run = true; 
                }

            }else if(overRun2){
                if(tbCard2[overCount2] == 0){
                    // 빈 테이블 없는 자리에 클릭했을때
                    overRun2 = false;

                }else{
                    
                    // 다른 조각 넣었던 것 빼기
                    ig = document.getElementById('ig' + tbCard2[overCount2]);
                    tb = document.getElementById('tbl' + overCount2);
    
                    let igL = ig.style.left;
                    let igT = ig.style.top;
    
                    tb.innerHTML = "";
                    $('body').append("<div onmouseover=\"divOn('" + tbCard2[overCount2] + "')\" onmouseout='divOut()' id='dv" + tbCard2[overCount2] + "' style='height:" + tbH + "px; width:" + tbW + "px; left:" + (eX2 - (tbW / 2)) + "px; top:" + (eY2 - (tbH / 2)) + "px; position:absolute;' ><img id='ig" + (tbCard2[overCount2]) + "' src='"+imgName+"' alt='사진' style='left:" + igL + "; top:" + igT + "; position:relative;'></div>");
                    
                    b = document.getElementById('dv' + (tbCard2[overCount2]));
    
                    runCount = tbCard2[overCount2];

                    tbCard2[overCount2] = 0;
                    tbCheck2[overCount2] = true;
                    run = true; 
                }

            }
            else {
                // 테이블 밖의 조각 집을때
                // 빈테이블 바깥에 있을때의 조건 추가
                if (eX2 > posX2 && eX2 < posX2 + w +border*num && eY2 > posY2 && eY2 < posY2 + h +border*num) {
                    overRun = false;
                    console.log('오버런 거짓1');
                } else if(eX2 > posX2emp && eX2 < posX2emp + w+border*num && eY2 > posY2emp && eY2 < posY2emp + h +border*num){
                     overRun2 = false;
                     console.log('오버런 거짓2');
                }else{
                    if(dvCount !=0){

                   
                    b = document.getElementById('dv' + (dvCount));
                    runCount = dvCount;
                    run = true;
                }
                 }  
            }
        }
    })
    )


    function divOn(c) {  // 테이블 외부에서 조각 집을때 조각의 번호 알아내기 위함
        dvCount = c;
    }

    function divOut() {
        dvCount = 0;
    }

    window.addEventListener('mousemove', function (e) {

        eX2 = parseFloat(e.clientX);
        eY2 = parseFloat(e.clientY);
        eX = e.pageX;
        eY = e.pageY;


        if (run) {
            b.style.left = e.pageX - (tbW / 2) + 'px';

            b.style.top = e.pageY - (tbH / 2) + 'px';
        }
    }
    )






        // function init(c) {
        //     let b = document.getElementById('tb' + c);

        //     window.addEventListener('click', function (e) {

        //         b.style.position = 'absolute';
        //         b.style.left = e.pageX - 800 - (tbW / 2) + 'px';

        //         b.style.top = e.pageY - (tbH / 2) + 'px';
        //     })

        // }


</script>

</html>