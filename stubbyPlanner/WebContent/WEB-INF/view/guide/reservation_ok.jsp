<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title> 예약 상세정보</title>

   <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


<script src="http://www.google.com/jsapi"></script>

</head>	
<body>



<div>
    <table border="0" cellpadding="0" cellspacing="0" style="max-width:720px;width:100%;">
        <thead>
            <tr style="height:160px; background-color:#84d8c0;">
                <td colspan="3" style="background:url(https://stuweb.s3.amazonaws.com/photo/1/2/b4a7e3365ca595e028e2d8054125468c.jpg) 50% no-repeat; background-size:auto 100%; background:url(https://stuweb.s3.amazonaws.com/photo/1/2/b4a7e3365ca595e028e2d8054125468c.jpg) 50% no-repeat / auto 100%;">
                </td>
            </tr>
            <tr style="background-color:#84d8c0;">
                <td style="width:5%"></td>
                <td>
                    <div style="display:block; width:100%; height:50px; background-color:#fff; text-align:center;">
                        <a href="javascript:window.history.go(-1)" style="float:left; display:block; padding:5px 8px;">
                            <i style="display:block; width:40px; height:40px; background:url(https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f277e0d06d1489a5d9b43a373474e80f.png) 0 0 no-repeat; background-size:200px; background:url(https://stuweb.s3.amazonaws.com/photo/1/2/f277e0d06d1489a5d9b43a373474e80f.png) 0 0 no-repeat / 200px; vertical-align:middle;"></i>
                        </a>

                        <p style="display:inline-block; margin:0; font-size:18px; font-weight:bold; line-height:50px; color:#4a4a4a;">예약접수가 완료되었습니다.</p>





                    </div>
                </td>
                <td style="width:5%"></td>
            </tr>
        </thead>
        <tbody>
            <tr style="background-color:#84d8c0;">
                <td style="width:5%;"></td>
                <td>
                    <div style="height:8px; border-top:1px solid #eaeaea; background-color:#f4f5f6;"></div>
                    <a href="#" style="display:block; padding:22px 16px; background-color:#fff; text-decoration:none; text-align:left;">
                        <div style="float:right; display:block; width:80px; height:0; padding:80px 0 0; overflow:hidden; border-radius:3px; background:url(http://d3b39vpyptsv01.cloudfront.net/photo/6/9/336c3d7744e52705dca73774bb202b24.jpg) 50% no-repeat; background-size:auto 100%; background:url(http://d3b39vpyptsv01.cloudfront.net/photo/6/9/336c3d7744e52705dca73774bb202b24.jpg) 50% no-repeat / auto 100%;">
                        </div>

                        <div style="margin:0 90px 0 0;">
									
								
                            <strong style="display:block; margin:0; padding:0 10px 5px 0; font-size:17px; line-height:24px; color:#4a4a4a;">${reserve[1].title}</strong>
                            <strong style="display:block; margin:0; padding:0 10px 5px 0; font-size:17px; line-height:24px; color:#4a4a4a;">${reserve[1].r_date}</b> </font></strong>
                            <p style="display:block; margin:0; font-size:14px; font-weight:normal; line-height:22px; color:#4a4a4a;">${reserve[1].company}</p>
                            <p style="display:block; margin:0; font-size:14px; font-weight:normal; line-height:22px; color:#4a4a4a;">${reserve[1].m_email}</p>
                            <p style="display:block; margin:0; font-size:14px; font-weight:normal; line-height:22px; color:#4a4a4a;">${reserve[1].tel}</p>
                            <p style="display:block; margin:0; font-size:14px; font-weight:normal; line-height:22px; color:#4a4a4a;">결제관련 문의: 02-886-0982 (스투비익스피어리언스)</p>
                        </div>
                    </a>
                    <div style="display:block; margin:20px 0 0; padding:22px 16px; background-color:#fff;">
                        <strong style="display:block; margin:0; padding:0 0 5px; font-size:17px; line-height:24px; color:#4a4a4a;">결제정보
                        </strong>
                        <div style="display:block;width:100%; margin:0; white-space:nowrap">



		

                            <dl style="margin:0; padding:15px 0; border-bottom:1px solid #eaeaea;">
                                <dt style="display:block; width:100%; font-size:14.5px; vertical-align:middle; color:#4a4a4a;">${reserve[0].division}</dt>
                                <dd style="display:block; margin:0;text-align:right; width:100%; font-size:14.5px; font-weight:bold; vertical-align:middle; color:#4a4a4a;"> ${reserve[0].price}KRW + (현지지불금) 0KRW</dd>
                                <dd style="display:block; margin:4px 0 0; font-size:13px; text-align:right; color:#8f8f8f;">${reserve[0].price}KRW  &times; ${reserve[0].policy_id_cnts}인  </dd>
                            </dl>
















                            <dl style="margin:0; padding:15px 0;">
                                <dt style="display:block; font-size:17px; font-weight:bold; vertical-align:top; color:#4a4a4a;">총 금액</dt>
                                <dd style="display:block;  font-size:20px; font-weight:bold; vertical-align:top; color:#3ad195;text-align:right; ">예약금: ${reserve[1].price_total} KRW</dd>
                            </dl>
                        </div>
                        <div style="margin:0 0 12px; padding:20px 16px; border-radius:4px; background-color:#4a4a4a; box-sizing:border-box; font-size:14.5px; text-align:right; color:#fff;">

                            <p style="margin:0 0 4px;">KEB하나은행</p>
                            <p style="margin:0 0 4px; font-size:22px; font-weight:bold; color:#3ad195;">109-910014-69105</p>
                            <p style="margin:0 0 4px;">(주)스투비익스피어리언스</p>

                        </div>
                        <div style="font-size:15px; color:#ee685a;padding-bottom:5px;">※ 위의 <b>계좌번호</b>와 <b>입금하실 금액</b>을 <b>복사</b>해 <b>카카오페이</b> 또는 <b>토스</b>등으로 모바일 송금하시면 간편합니다.</div>
                        <div style="font-size:13px; color:#ee685a">


			<b><font style="font-size:15px;">※ 위의 계좌로 24시간이내에 입금해주세요.</font></b>

			<br> 반드시 예약자분의 이름으로 예약금을 입금해주세요.(예약자명과 입금자명이 다를 경우, 반드시 카카오톡 (stubby2496) 이나 이메일 (stubbyteam@gmail.com)을 통해 알려주셔야합니다.)</div>
                    </div>
                    <div style="display:block; margin:20px 0 0; padding:22px 16px; background-color:#fff;">
                        <strong style="display:block; margin:0; padding:0 0 5px; font-size:17px; line-height:24px; color:#4a4a4a;">예약자 정보
                        </strong>
                        <div style="display:table; width:100%; margin:0; white-space:nowrap">



                            <dl style="margin:0; padding:15px 0; border-bottom:1px solid #eaeaea;">
                                <dt style="display:block;  font-size:14.5px; vertical-align:middle; color:#4a4a4a;">신청자</dt>
                                <dd style="display:block;  font-size:14.5px; font-weight:bold; text-align:right; vertical-align:middle; color:#4a4a4a;">${reserve[1].resv_name} </dd>
                            </dl>
                            <dl style="margin:0; padding:15px 0; border-bottom:1px solid #eaeaea;">
                                <dt style="display:block;  font-size:14.5px; vertical-align:middle; color:#4a4a4a;">핸드폰번호  / 카톡 아이디</dt>
                                <dd style="display:block; font-size:14.5px; font-weight:bold; text-align:right;vertical-align:middle; color:#4a4a4a;">${reserve[1].phone} / ${reserve[1].kakao}</dd>
                            </dl>
                            <dl style="margin:0; padding:15px 0; border-bottom:1px solid #eaeaea;">
                                <dt style="display:block; font-size:14.5px; vertical-align:middle; color:#4a4a4a;">이메일주소</dt>
                                <dd style="display:block; font-size:14.5px; font-weight:bold; text-align:right; vertical-align:middle; color:#4a4a4a;"><a style="color:#4a4a4a; text-decoration:none;">${reserve[1].email}</a></dd>
                            </dl>
                            <dl style="margin:0; padding:15px 0;">
                                <dt style="display:block;width:100%; font-size:14.5px; vertical-align:middle; color:#4a4a4a;">남기실메시지</dt>
                                <p style="display:block; margin:0; padding:16px 0 0; font-size:14px; line-height:22px; white-space:normal; color:#8f8f8f;">
									${reserve[1].msg}
                                </p>
                            </dl>
                        </div>
                    </div>
                    <div style="display:block; margin:0; padding:22px 16px; background-color:#f5f7f5; line-height:22px;color:#4a4a4a;">
                        <strong style="display:block; margin:0 0 16px; padding:0; font-size:17px;">예약시 주의사항
                        </strong>
                        <p style="display:block; margin:0 0 10px; padding:0; font-size:13px;">본 페이지는 예약확정 및 입금확인후에 발송되는 예약바우처(예약확인증)가 아닙니다. 현재 단계는 단지 예약신청의 접수가 완료된 단계입니다.</p>
                        <p style="display:block; margin:0 0 10px; padding:0; font-size:13px;"><a href="http://www.stubbyplanner.com/guide/reservation.asp" target="_blank">[내 예약]</a> 메뉴에서 예약확정 여부를 확인 가능합니다.</p>
                        <p style="display:block; margin:0 0 10px; padding:0; font-size:13px;">예약취소시 환불은 예약시 동의하신 여행자 약관의 취소 환불규정(하단 첨부)에 따르며, <a href="http://www.stubbyplanner.com/guide/detail.asp?tourserial=1110110041194" target="_blank"><u>상품소개 페이지내에 기재된 환불조건</u></a>이 있는 경우에는 해당 규정이  우선합니다.</p>		
                    </div>



                    <div style="display:block; margin:0; padding:22px 16px; background-color:#f5f7f5; line-height:22px;color:#4a4a4a;">
                        <strong style="display:block; margin:0 0 16px; padding:0; font-size:17px;">가이드투어 취소/환불 안내
                        </strong>
                        <p style="display:block; margin:0 0 10px; padding:0; font-size:13px;">

여행자는 가이드약관 제16조 제2항에 따라 여행요금 지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음 각 호의 기준에 따라 여행요금이 환불됩니다.<br>
해제 통보 시점은 환불요청서가 스투비 플랫폼에 접수된 시간 또는 웹싸이트 하단에 기재된 대표 이메일(stubbyteam@gmail.com)을 통하여 환불요청 내용이 기록된 시간을 기준으로 합니다.<br>
<br>
- 여행시작 30일전 (~30) 까지 통보시: 여행 요금 전액 환불<br>
- 여행시작 20일 전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 스투비 수수료 공제 후 환불<br>
- 여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 스투비 수수료 공제 후 환불<br>
- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의 20%와 스투비 수수료 공제 후 환불<br>
- 여행시작 시간 기준 24시간 이내 통보시: 여행요금에서 가이드 요금의 50%와 스투비 수수료 공제 후 환불<br>
다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.<br>
1) 여행자가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약 후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다. 단, 여행자가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우는 전액 환불 대상에서 제외합니다.<br>
2) 상품의 특성에 따라 현지 지불금으로 지불되어야 하는 금액이 있는 경우 해당 현지 지불금액의 환불에 대하여는 각 상품의 상세설명보기에서 별도로 고지한 취소환불 약관을 적용합니다.


		</p>
                        <p style="display:block; margin:0 0 10px; padding:0; font-size:13px;"><a href="http://www.stubbyplanner.com/guide/detail.asp?tourserial=1110110041194" target="_blank">상품페이지</a>에 기재된 환불규정이 있을 경우, 해당 내용이 위의 내용보다 우선합니다.</p>
                    </div>



                </td>
                <td style="width:5%;"></td>
            </tr>
        </tbody>
        <tfoot>
            <tr style="background-color:#84d8c0;">
                <td colspan="3" style="padding:25px 0; text-align:center;">
                    <img src="https://stuweb.s3.amazonaws.com/photo/1/2/ebb3c508759c772cc274f032b4919e0f.png" alt=""/>
                    <div style="padding:12px 0 0; font-size:10px; letter-spacing:-.2px; color:#fff;"><a style="color:#fff; text-decoration:none;">서울특별시 관악구 남부순환로 1837 샤론빌딩 402</a></div>
                    <div style="padding:12px 0 0; font-size:10px; letter-spacing:-.2px; color:#fff;">고객문의 02-886-0982 / 운영시간(한국) 11:00 ~ 19:00</div>
                </td>
            </tr>
        </tfoot>
    </table>
</div>


</body>
</html>



