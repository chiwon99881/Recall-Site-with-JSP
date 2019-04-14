<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#css_tabs {
    font-family:'nanumgothic', '�������', 'malgun gothic', '���� ���', 'dotum', '����', sans-serif
}

/* �� ���� �� ǥ���� ���(div) ����(1�� �� ���� �� ù ��° div ��� ǥ��) */
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

/* �� �⺻ ��Ÿ�� ���� */
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

/* ���õ� ��, Ŀ���� �ø� �� ��Ÿ�� ���� */
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
/* ���� ������ ��� div ��� ��Ÿ�� ���� */
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

    <label for="tab1">���ݿ��� �ڹ����� ���ݰ� �������� ������ �ִٰ� �ϴµ� �������� ����������?</label>

    <div class="tab1_content">
        ������ �������� �ڹ����� ���ݰ� �������� ���ݷ� �����ϴ�. ���ο� ���� �������� ���ݺ��ٴ� ������ �����ΰ� �����ϴ� �ڹ��� ������ ��κ��� �����ϰ� �ֽ��ϴ�. ���� �ڹ����� ���ݿ��� ���ΰ� ���۰������縦 �����ϴ� ���, ���� �������� �����ڰ� ������ ������ �����ϴ� ��쵵 ���Ե˴ϴ�.<p> 
* ���������� Ȱ���ϰ� �̷������ �ִ� �̱��� ��츦 ������ ���� �� �� 75%�� ���ۻ��� �ڹ����� ���ݷ� �̷������, �� �̿��� ���� ���� ���翡 ������ �޾� ������ ������ ������ ���ۻ��� �ڹ��� ������ ����ȭ �Ǿ��ֽ��ϴ�. </div>

</div> <p>
<div id="css_tabs">
    <input id="tab2" type="radio" name="tab" />

    <label for="tab2">����(���۰��� ����) ����� ��� �Ϲ��ο��� �˷�������?</label>

    <div class="tab2_content">
        	   �����ؾ�δ� ���ݻ���� �뱹�� ������ ���� ���� ������ ��п� �����ڷḦ ��ǥ�ϰ�, ���ۻ�� �߾��ϰ����� ���ݻ���� �����ϸ�, �ڵ��������ڿ��Դ� ���� ���������� ���� �˷������� �ϰ� ������,<br>
           	   ������Ȳ�� ���ڵ������ԽŰ���(www.car.go.kr)������ �׻� Ȯ���� �����մϴ�. 
        </div>

</div> <p>
<div id="css_tabs">
    <input id="tab3" type="radio" name="tab" />

    <label for="tab3">���۰������翡���� � ������ �����ϳ���?</label>

    <div class="tab3_content">
 ���۰�������� ���ΰ� ������ �������� ���� ���θ� Ȯ���ϴ� �ڱ�������������� ���� ���࿡ ������ �ִ� �� ���θ� Ȯ���ϴ� �����������簡 ������, �ڱ�������������� �������������� ���� ������ ������ �����ϴ�. 
<p>
�� �ڱ����� �������� 
- �ڵ��� ����.���� �����ڰ� �������� �� �ڵ����������ɿ� �����ϰ� �ڱ������Ͽ� �Ǹ��� �ڵ����� ����, ���ΰ� �������� �ڵ����� �����Ͽ� �ڵ����������ɿ� �����ϰ� ���۵Ǿ������� Ȯ���ϴ� �����Դϴ�. 
<p>
�� ������������ 
- ������������� ������� �߻� ���ɼ��� ���ų� ����� �ٸ��� ���۵� �� �ڵ��� �������࿡ ������ �� �� �ִ� �������� ���� ���θ� �����ϴ� �����Դϴ�. 
<p>
* �ڱ������������� �� ������������� ���ڵ������������������� �����մϴ�. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab4" type="radio" name="tab" />

    <label for="tab4">���� �ڵ������� �Ű� �ϸ� ��� ���۰������縦 �ϳ���?</label>

    <div class="tab4_content">
        ���۰�������� �ڵ����� ��� �̻�, �����ǵ��� ��� ���۵� �� �ڵ��� �������࿡ ������ �� �� �ִ� ������ ���� ���� ���θ� Ȯ���ϴ� ���Դϴ�.<p>
        ���۰�������� �����Ͽ� �ڵ������۰������������, �ڵ������۰��ԽŰ���ȭ �� ��и�ü �� �پ��� ä���� ���Ͽ� ������ �����ϰ� �ֽ��ϴ�. <p>
������ ������ �ֱ����� �м��� ���Ͽ� �ڵ������۰������翩�θ� �Ǵ��ϰ� ������ ������������ ���� �������� �ټ��� ���� �߻� ���� ���� �м��ϰ� �ֽ��ϴ�.<p>
�̷��� �м��ڷḦ �������� ���۰������縦 �ǽ��ϰ� �ǹǷ� ���Ⱓ�� �ҿ���� �����Ͻñ� �ٶ��ϴ�
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab5" type="radio" name="tab" />

    <label for="tab5">����(���۰��� ����)����� � ������� �̷��������?</label>

    <div class="tab5_content">
        �ڵ��������������� ���۰������� ����� �����ؾ����� �Ҽ��Ͽ� ������ ���۰��Խɻ�������ȸ���� ���� �ǰ��� ���� ���ݿ��θ� �����ϸ�, �����ؾ���� û���� �ǽ��� ���� ���ݸ���� �ϰ� �˴ϴ�. 
<p>* ���۰��Խɻ�������ȸ�� ���б���, �ùδ�ü, �ѱ��Һ��ڿ� �� 20������ ���� 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab6" type="radio" name="tab" />

    <label for="tab6">�ڵ��� ����(recall)�� ������å������(pl)�� ���̰� �����ΰ���?</label>

    <div class="tab6_content">
�ڵ��� ���������� �ڵ����� �������� ���� ������ ���� �� ���ս��� �߻��ϰų� �߻� ���ɼ��� �ִ� ��쿡 �� �ڵ����� ���ۤ����� �Ǵ� ������ ������ ���� ���� ���� ����� �Һ��ڿ��� �뺸�Ͽ� ����, ��ȯ �Ǵ� ȯ�� ���� ��ġ�� ���� ������ ���õ� ��� �� �Һ��� ���ظ� ������ �����ϰ� ����� �����ϱ� ���� �����Դϴ�. 
������ å��(pl product liability) ������ ��������(������ ���������� �Ǵ� ������ ������ �ϴ� ��)�� �������� �������� ���Ͽ� ����, ��ü �Ǵ� ��꿡 ���ظ� ���� �ڿ��� �� ���ظ� ������ �ϴ� ���ع�� å�������Դϴ�. 
<p>
* ���ݰ� ������å�������� ������ ������ �Һ��� ���ؿ� ������ ��ȣ�ϴ� ���鿡���� �������� ������, �Һ��� ���غ��������� ������å�������� �̹� �߻��� �Һ��� ���ؿ� ���Ͽ� �����ڰ� ���� �������ִ� ���ĺ��� ������ �����ε� ���Ͽ�, ���������� ������ǰ�� �����ڰ� �ڹ��� �Ǵ� ���ο� ���� ���������� ������ ������ġ�� ���Ͽ� �Һ��� ���ظ� ������ �����ϴ� ������ ���� ������ ���� �������� �Һ��ں�ȣ �����Դϴ�. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab7" type="radio" name="tab" />

    <label for="tab7">���ݽ����� �ں�� ������ �κп� ���� ������ �����ұ��?</label>

    <div class="tab7_content">
      ���ݺ��������� ���ۻ簡 �ڱ������Ͽ� �Ǹ��� �ڵ����� ������ �߻��� ��� ���۰��� �������� �ڵ��� �����ڰ� �ڱ������� ������ ������ ��� �̿� ���� ����� �����ڰ� �����ϴ� �����Դϴ�. 
<br>
���δ� ���ݺ��������� 2009�� 3������ �����Ͽ����� �ڵ��� �Һ��ڰ� ���ݽ��� ���� 1�Ⱓ ������ ����� ������ �� �ִ� ������ �����Ͽ� �����ڿ� û���Ͻø� �˴ϴ�. 

<p>
���񼭷�<br>
<br>1. ��134����2�׿� ���� ���� ��89ȣ��2������ �ڵ������ˤ����񳻿���
<br>2.���ΰ���ġ�������� ���� ���ݰ�꼭 �Ǵ� ������(�ſ�ī�������ǥ�� �����Ѵ�)
<br>3. �ڵ��������, �ڵ��� �������� �ź��� �� �Ա����� �纻

        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab8" type="radio" name="tab" />

    <label for="tab8">���۰��� ���������̶� ������ ���ϴ� ���ΰ���?</label>

    <div class="tab8_content">
���۰��� ���������� �ڵ��� ������, �Һ��ڴ�ü, �ڵ������ԽŰ���(www.car.go.kr)���� ���� <br>
�ڵ��� ���� ������ �����Ͽ� �����Ⱓ���� ���Ϲ����� ���� �߻� �� �� ���Ӽ� ���� �����ϴ� ������ ���մϴ�. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab9" type="radio" name="tab" />

    <label for="tab9">�ڵ��� ������ �Ű��ϰ� ������ ��� �ϳ���?</label>

    <div class="tab9_content">
�ڵ��� ���� �� �������� ���� �� �ڵ��� ���԰� �����Ͽ� �����ؾ�� �� �ڵ������������������� �ڵ������۰��������� �����ϰ� �ֽ��ϴ�. 
<p>
�ڵ������ԽŰ���(www.car.go.kr)�� �湮�ϼż� ������ �Ż����� �� ���������� �Է��Ͻ� �� �ڵ��� �������� ���Ͽ� �Է��ϰų� ���۰��ԽŰ�������ȭ(080-357-2500)�� �̿��Ͻñ� �ٶ��ϴ�. 
<p>
�������� �����Ͻ� �ڵ������۰��������� ���� ���۰������縦 �����ϴ� �ϳ��� ������ �ڷ�� Ȱ��˴ϴ�. 
�����Ͻ� ���۰��� ������ ���� ����� �м��� �����Ⱓ�� �ҿ�ʿ� ���� �� �Ǻ��� ȸ���� �Ұ����ϸ�, ��쿡 ���� ���۰��� ������ ������ �ڵ��� �����ڿ��� ���۰������縦 �����ϴ� ���ɽ������������ ���������� ���� �������� Ȯ���� �ǽ��� �� �ֽ��ϴ�. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab10" type="radio" name="tab" />

    <label for="tab10">�� ���� ��ȯ �Ǵ� ȯ�ҹް� ������ �����Ѱ���?</label>

    <div class="tab10_content">
�ڵ��� ��ȯ �� ȯ�Ұ� ���õ� ������ �ѱ��Һ��ڿ�(www.kca.go.kr)���� �� ������ �����ϰ� �����Ƿ� �� ����� ���ر��� ��û�� �Ͻñ� �ٶ��ϴ�. 
        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab11" type="radio" name="tab" />

    <label for="tab11">�ڵ��� ����(���۰��� ����) ��󿡼� ���ܵǴ� ������ �����ΰ���?</label>

    <div class="tab11_content">
�ڵ��� �������� ��ġ�� ������ ���� ���� ���� � ���Ͽ��� ����(���۰��Խ���)��󿡼� ���ܵ˴ϴ�. 
<br>- ������, ���� ���� �°����� ��ġ 
<br>- �ֱ������� ����, ���� ��ȯ�� �Ͽ��� �ϴ� ��мҹ�(shock absorber), ������(battery), �극��ũ �е� ���� ����
<br>- ��ü �г��� �ܼ� �� �߻� 
<br>- ����Ʈ�� ���� �Ǵ� ��ü ��Ĺ� ���� ���� 
<br>- �õ��ҷ�, ����, ���� �� 

        </div>


</div> <p>
<div id="css_tabs">
    <input id="tab12" type="radio" name="tab" />

    <label for="tab12">�� ���� ��ȯ �Ǵ� ȯ�ҹް� ������ �����Ѱ���?</label>

    <div class="tab12_content">
       �ڵ��� ��ȯ �� ȯ�Ұ� ���õ� ������ �ѱ��Һ��ڿ�(www.kca.go.kr)���� �� ������ �����ϰ� �����Ƿ� �� ����� ���ر��� ��û�� �Ͻñ� �ٶ��ϴ�. 
        </div>


</div>
</body>
</html>