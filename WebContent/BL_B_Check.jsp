<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#css_tabs {
    font-family:'nanumgothic', '나눔고딕', 'malgun gothic', '맑은 고딕', 'dotum', '돋움', sans-serif
}

/* 탭 선택 시 표시할 요소(div) 정의(1번 탭 선택 시 첫 번째 div 요소 표시) */
#css_tabs input:nth-of-type(1), #css_tabs input:nth-of-type(1) ~ div:nth-of-type(1),
#css_tabs input:nth-of-type(2), #css_tabs input:nth-of-type(2) ~ div:nth-of-type(2),
#css_tabs input:nth-of-type(3), #css_tabs input:nth-of-type(3) ~ div:nth-of-type(3),
#css_tabs input:nth-of-type(4), #css_tabs input:nth-of-type(4) ~ div:nth-of-type(4),
#css_tabs input:nth-of-type(5), #css_tabs input:nth-of-type(5) ~ div:nth-of-type(5),
#css_tabs input:nth-of-type(6), #css_tabs input:nth-of-type(6) ~ div:nth-of-type(6),
#css_tabs input:nth-of-type(7), #css_tabs input:nth-of-type(7) ~ div:nth-of-type(7),
#css_tabs input:nth-of-type(8), #css_tabs input:nth-of-type(8) ~ div:nth-of-type(8),
#css_tabs input:nth-of-type(9), #css_tabs input:nth-of-type(9) ~ div:nth-of-type(9),
#css_tabs input:nth-of-type(10), #css_tabs input:nth-of-type(10) ~ div:nth-of-type(10),
#css_tabs input:nth-of-type(11), #css_tabs input:nth-of-type(11) ~ div:nth-of-type(11),
#css_tabs input:nth-of-type(12), #css_tabs input:nth-of-type(12) ~ div:nth-of-type(12) {
    display:none
}
#css_tabs input:nth-of-type(1):checked ~ div:nth-of-type(1),
#css_tabs input:nth-of-type(2):checked ~ div:nth-of-type(2),
#css_tabs input:nth-of-type(3):checked ~ div:nth-of-type(3),
#css_tabs input:nth-of-type(4):checked ~ div:nth-of-type(4),
#css_tabs input:nth-of-type(5):checked ~ div:nth-of-type(5),
#css_tabs input:nth-of-type(6):checked ~ div:nth-of-type(6),
#css_tabs input:nth-of-type(7):checked ~ div:nth-of-type(7),
#css_tabs input:nth-of-type(8):checked ~ div:nth-of-type(8),
#css_tabs input:nth-of-type(9):checked ~ div:nth-of-type(9),
#css_tabs input:nth-of-type(10):checked ~ div:nth-of-type(10),
#css_tabs input:nth-of-type(11):checked ~ div:nth-of-type(11),
#css_tabs input:nth-of-type(12):checked ~ div:nth-of-type(12) {
    display:block
}

/* 라벨 기본 스타일 지정 */
#css_tabs > label {
    display:inline;
    font-variant:small-caps;
    font-size:.9em;
    padding:5px;
    text-align:center;
    width:20%;
    line-height:1.8em;
    font-weight:700;
    border-radius:3px 3px 0 0;
    background:#eee;
    color:#777;
    border:1px solid #ccc;
    border-width:1px 1px 0
}
#css_tabs > label:hover {
    cursor:pointer
}
/* #css_tabs label[for=tab1] {
    margin-left:1.5em
} */

/* 선택된 라벨, 커서를 올린 라벨 스타일 지정 */
#css_tabs input:nth-of-type(1):checked ~ label:nth-of-type(1), #css_tabs > label[for=tab1]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(2):checked ~ label:nth-of-type(2), #css_tabs > label[for=tab2]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(3):checked ~ label:nth-of-type(3), #css_tabs > label[for=tab3]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(4):checked ~ label:nth-of-type(4), #css_tabs > label[for=tab4]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(5):checked ~ label:nth-of-type(5), #css_tabs > label[for=tab5]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(6):checked ~ label:nth-of-type(6), #css_tabs > label[for=tab6]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(7):checked ~ label:nth-of-type(7), #css_tabs > label[for=tab7]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(8):checked ~ label:nth-of-type(8), #css_tabs > label[for=tab8]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(9):checked ~ label:nth-of-type(9), #css_tabs > label[for=tab9]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(10):checked ~ label:nth-of-type(10), #css_tabs > label[for=tab10]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(11):checked ~ label:nth-of-type(11), #css_tabs > label[for=tab11]:hover {
    background:SkyBlue;
    color:#fff
}
#css_tabs input:nth-of-type(12):checked ~ label:nth-of-type(12), #css_tabs > label[for=tab12]:hover {
    background:SkyBlue;
    color:#fff
}
/* 실제 내용이 담긴 div 요소 스타일 지정 */
#css_tabs .tab1_content, #css_tabs .tab2_content, #css_tabs .tab3_content, #css_tabs .tab4_content, #css_tabs .tab5_content, #css_tabs .tab6_content
, #css_tabs .tab7_content, #css_tabs .tab8_content, #css_tabs .tab9_content, #css_tabs .tab10_content, #css_tabs .tab11_content, #css_tabs .tab12_content {
    padding:2em;
    bgcolor:gray;
    border:1px solid #ddd;
    width:70%;
    height:100%
}

</style>
</head>
<body>
<div id="css_tabs">
    <input id="tab1" type="radio" name="tab" />

    <label for="tab1">리콜에는 자발적인 리콜과 강제적인 리콜이 있다고 하는데 차이점은 무엇인지요?</label>

    <div class="tab1_content">
        리콜은 제작자의 자발적인 리콜과 강제적인 리콜로 나뉩니다. 정부에 의한 강제적인 리콜보다는 제작자 스스로가 시행하는 자발적 리콜이 대부분을 차지하고 있습니다. 물론 자발적인 리콜에는 정부가 제작결함조사를 시행하는 경우, 이의 영향으로 제작자가 스스로 리콜을 시행하는 경우도 포함됩니다.<p> 
* 리콜제도가 활발하게 이루어지고 있는 미국의 경우를 보더라도 리콜 중 약 75%가 제작사의 자발적인 리콜로 이루어지고, 그 이외의 것은 정부 조사에 영향을 받아 리콜을 시행할 정도로 제작사의 자발적 리콜이 보편화 되어있습니다. </div>

</div> <p>
<div id="css_tabs">
    <input id="tab2" type="radio" name="tab" />

    <label for="tab2">리콜(제작결함 시정) 사실은 어떻게 일반인에게 알려지나요?</label>

    <div class="tab2_content">
        	   국토해양부는 리콜사실의 대국민 공개를 위해 리콜 결정시 언론에 보도자료를 공표하고, 제작사는 중앙일간지에 리콜사실을 고지하며, 자동차소유자에게는 리콜 우편통지를 통해 알려지도록 하고 있으며,<br>
           	   리콜현황을 「자동차결함신고센터(www.car.go.kr)」에서 항상 확인이 가능합니다. 
        </div>

</div> <p>
<div id="css_tabs">
    <input id="tab3" type="radio" name="tab" />

    <label for="tab3">제작결함조사에서는 어떤 업무를 수행하나요?</label>

    <div class="tab3_content">
 제작결함조사는 정부가 규정한 안전기준 적합 여부를 확인하는 자기인증적합조사와 안전 운행에 지장을 주는 지 여부를 확인하는 안전결함조사가 있으며, 자기인증적합조사와 안전결함조사의 세부 내용은 다음과 같습니다. 
<p>
ㅇ 자기인증 적합조사 
- 자동차 제작.조립 수입자가 안전기준 등 자동차관리법령에 적합하게 자기인증하여 판매한 자동차에 대해, 정부가 시판중인 자동차를 구매하여 자동차관리법령에 적합하게 제작되었는지를 확인하는 조사입니다. 
<p>
ㅇ 안전결함조사 
- 안전결함조사는 안전사고 발생 가능성이 높거나 설계와 다르게 오작동 등 자동차 안전운행에 지장을 줄 수 있는 안전관련 결함 여부를 조사하는 제도입니다. 
<p>
* 자기인증적합조사 및 안전결함조사는 “자동차안전연구원”에서 시행합니다. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab4" type="radio" name="tab" />

    <label for="tab4">제가 자동차결함 신고를 하면 즉시 제작결함조사를 하나요?</label>

    <div class="tab4_content">
        제작결함조사는 자동차의 기능 이상, 설계의도를 벗어난 오작동 등 자동차 안전운행에 지장을 줄 수 있는 안전도 관련 결함 여부를 확인하는 것입니다.<p>
        제작결함조사와 관련하여 자동차제작결함정보전산망, 자동차제작결함신고전화 및 언론매체 등 다양한 채널을 통하여 정보를 수집하고 있습니다. <p>
수집된 정보는 주기적인 분석을 통하여 자동차제작결함조사여부를 판단하고 있으며 동일차종에서 동일 현상으로 다수의 결함 발생 여부 등을 분석하고 있습니다.<p>
이러한 분석자료를 바탕으로 제작결함조사를 실시하게 되므로 상당기간이 소요됨을 양해하시길 바랍니다
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab5" type="radio" name="tab" />

    <label for="tab5">리콜(제작결함 시정)명령은 어떤 방식으로 이루어지나요?</label>

    <div class="tab5_content">
        자동차안전연구원의 제작결함조사 결과를 국토해양부장관 소속하에 구성된 제작결함심사평가위원회에서 심의 의결을 거쳐 리콜여부를 결정하며, 국토해양부의 청문을 실시한 다음 리콜명령을 하게 됩니다. 
<p>* 제작결함심사평가위원회는 대학교수, 시민단체, 한국소비자원 등 20명으로 구성 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab6" type="radio" name="tab" />

    <label for="tab6">자동차 리콜(recall)과 제조물책임제도(pl)의 차이가 무엇인가요?</label>

    <div class="tab6_content">
자동차 리콜제도는 자동차의 결함으로 인해 국민의 생명 및 재산손실이 발생하거나 발생 가능성이 있는 경우에 그 자동차를 제작ㆍ조립 또는 수입한 제작자 등이 결함 관련 사실을 소비자에게 통보하여 수리, 교환 또는 환불 등의 조치를 통해 안전과 관련된 사고 및 소비자 피해를 사전에 예방하고 재발을 방지하기 위한 제도입니다. 
제조물 책임(pl product liability) 제도는 제조업자(제조물 제조ㆍ가공 또는 수입을 업으로 하는 자)가 제조물의 결함으로 인하여 생명, 신체 또는 재산에 손해를 입은 자에게 그 손해를 배상토록 하는 손해배상 책임제도입니다. 
<p>
* 리콜과 제조물책임제도는 안전과 관련한 소비자 피해와 권익을 보호하는 측면에서는 공통점이 있지만, 소비자 피해보상제도와 제조물책임제도가 이미 발생한 소비자 피해에 대하여 제작자가 직접 보상해주는 사후보상 측면의 제도인데 반하여, 리콜제도는 결함제품을 제작자가 자발적 또는 정부에 의해 강제적으로 적절한 시정조치를 취하여 소비자 피해를 사전에 방지하는 사전적 예방 차원의 보다 적극적인 소비자보호 제도입니다. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab7" type="radio" name="tab" />

    <label for="tab7">리콜시행전 자비로 수리한 부분에 대한 보상이 가능할까요?</label>

    <div class="tab7_content">
      리콜보상제도는 제작사가 자기인증하여 판매한 자동차에 결함이 발생한 경우 제작결함 시정전에 자동차 소유자가 자기비용으로 결함을 시정한 경우 이에 대한 비용을 제작자가 보상하는 제도입니다. 
<br>
정부는 리콜보상제도를 2009년 3월부터 도입하였으며 자동차 소비자가 리콜시행 이전 1년간 지불한 비용을 증명할 수 있는 서류를 구비하여 제작자에 청구하시면 됩니다. 

<p>
구비서류<br>
<br>1. 제134조제2항에 따른 별지 제89호의2서식의 자동차점검ㆍ정비내역서
<br>2.「부가가치세법」에 따른 세금계산서 또는 영수증(신용카드매출전표를 포함한다)
<br>3. 자동차등록증, 자동차 소유자의 신분증 및 입금통장 사본

        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab8" type="radio" name="tab" />

    <label for="tab8">제작결함 정보수집이란 무엇을 말하는 것인가요?</label>

    <div class="tab8_content">
제작결함 정보수집은 자동차 소유자, 소비자단체, 자동차결함신고센터(www.car.go.kr)등을 통해 <br>
자동차 결함 정보를 수집하여 일정기간동안 동일문제에 대한 발생 빈도 및 지속성 등을 수집하는 행위를 말합니다. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab9" type="radio" name="tab" />

    <label for="tab9">자동차 결함을 신고하고 싶은데 어떻게 하나요?</label>

    <div class="tab9_content">
자동차 운행 중 안전상의 문제 등 자동차 결함과 관련하여 국토해양부 및 자동차안전연구원에서는 자동차제작결함정보를 수집하고 있습니다. 
<p>
자동차결함신고센터(www.car.go.kr)를 방문하셔서 본인의 신상정보 및 차량정보를 입력하신 후 자동차 결함현상에 대하여 입력하거나 제작결함신고전용전화(080-357-2500)를 이용하시길 바랍니다. 
<p>
여러분이 제공하신 자동차제작결함정보는 향후 제작결함조사를 수행하는 하나의 귀중한 자료로 활용됩니다. 
제공하신 제작결함 정보에 대해 검토와 분석에 일정기간이 소요됨에 따라 매 건별로 회신이 불가능하며, 경우에 따라서 제작결함 정보를 제공한 자동차 소유자에게 제작결함조사를 수행하는 성능시험대행기관에서 제공정보에 대해 유선으로 확인을 실시할 수 있습니다. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab10" type="radio" name="tab" />

    <label for="tab10">제 차를 교환 또는 환불받고 싶은데 가능한가요?</label>

    <div class="tab10_content">
자동차 교환 및 환불과 관련된 사항은 한국소비자원(www.kca.go.kr)에서 이 업무를 수행하고 있으므로 동 기관에 피해구제 신청을 하시기 바랍니다. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab11" type="radio" name="tab" />

    <label for="tab11">자동차 리콜(제작결함 시정) 대상에서 제외되는 사항은 무엇인가요?</label>

    <div class="tab11_content">
자동차 안전도에 미치는 영향이 없는 다음 사항 등에 대하여는 리콜(제작결함시정)대상에서 제외됩니다. 
<br>- 에어컨, 라디오 등의 승객편의 장치 
<br>- 주기적으로 점검, 유지 교환을 하여야 하는 쇽압소바(shock absorber), 축전지(battery), 브레이크 패드 등의 마모
<br>- 차체 패널의 단순 녹 발생 
<br>- 페인트의 상태 또는 차체 장식물 등의 흠집 
<br>- 시동불량, 소음, 진동 등 

        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab12" type="radio" name="tab" />

    <label for="tab12">제 차를 교환 또는 환불받고 싶은데 가능한가요?</label>

    <div class="tab12_content">
       자동차 교환 및 환불과 관련된 사항은 한국소비자원(www.kca.go.kr)에서 이 업무를 수행하고 있으므로 동 기관에 피해구제 신청을 하시기 바랍니다. 
        </div>


</div>
</body>
</html>