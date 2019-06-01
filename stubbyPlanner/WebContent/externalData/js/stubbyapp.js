

function getMobileOperatingSystem() {
  var userAgent = navigator.userAgent || navigator.vendor || window.opera;

      // Windows Phone must come first because its UA also contains "Android"
    if (/windows phone/i.test(userAgent)) {
        return "Windows Phone";
    }

    if (/android/i.test(userAgent)) {
        return "Android";
    }

    // iOS detection from: http://stackoverflow.com/a/9039885/177710
    if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
        return "iOS";
    }

    return "unknown";
}

function showSchdTool(trip_id)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{
			func_alert("플래너로 돌아가서 하단에 일정표 메뉴에서 지도등이 포함된 일정을 작성할 수 있습니다.");
		}
		else
		{window.webkit.messageHandlers.showSchdTool.postMessage(trip_id);}
		
	}
	catch(exception)
	{}
}
function showTab()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{}
		else
		{window.webkit.messageHandlers.showTab.postMessage("");}
		
	}
	catch(exception)
	{}

}
function openWB(url)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{window.Android.openURLWB(url);}
		else
		{window.webkit.messageHandlers.openWB.postMessage(url);}
		
	}
	catch(exception)
	{}

}
function openURL(url)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{window.Android.openURL(url);}
		else
		{window.webkit.messageHandlers.openURL.postMessage(url);}
	}
	catch(exception)
	{}

}

function openURL2(url)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{

			window.Android.openURLandRefresh(url);
		}
		else
		{
			window.webkit.messageHandlers.openURL2.postMessage(url);
		}
	}
	catch(exception)
	{}

}
function hideTab()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{
		//window.Android.hideTab();
		}
		else
		{
//		window.webkit.messageHandlers.hideTab.postMessage("");
		}
	}
	catch(exception)
	{}

}

function showCityBucketList(region_id,trip_id)
{
	try
	{
		
		window.webkit.messageHandlers.showBucketList.postMessage(region_id+","+trip_id);
	}
	catch(exception)
	{}

}
function showBucket(bucket_id)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
			window.Android.showBucket(parseInt(bucket_id));
		else
			window.webkit.messageHandlers.showBucket.postMessage(bucket_id);
	}
	catch(exception)
	{}

}

function showGuideBook(book_id)
{
	try
	{

		if(getMobileOperatingSystem()=='Android')
		{
			window.Android.openGuideBook(parseInt(book_id));
		}
		else
		{
			window.webkit.messageHandlers.showGuideBook.postMessage(book_id);
		}
	}
	catch(exception)
	{}

}
function showMyResv()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
			window.Android.openMyReservation();
		else
			window.webkit.messageHandlers.showMyResv.postMessage("");
	}
	catch(exception)
	{}

}
function showBookshelf()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
		{
			window.Android.showBookshelf();
		}
		else
		{
			window.webkit.messageHandlers.showBookshelf.postMessage("");
		}
	}
	catch(exception)
	{}

}
function closeMyself()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
			closeWB();
		else
			window.webkit.messageHandlers.closeMyself.postMessage("");
	}
	catch(exception)
	{}

}
function closeMyselfWithRefresh()
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
			window.Android.closeAndRefresh();
		else
			window.webkit.messageHandlers.closeMyselfWithRefresh.postMessage("");
	}
	catch(exception)
	{}

}

function appAlert(msg)
{
	try
	{
		window.webkit.messageHandlers.appAlert.postMessage(msg);
	}
	catch(exception)
	{}
	
}
function closeAndParentMove(url)
{
	try
	{
		if(getMobileOperatingSystem()=='Android')
			window.Android.closeAndParentMove(url);
		else
			closeMyselfWithRefresh();
	}
	catch(exception)
	{}
	
}
