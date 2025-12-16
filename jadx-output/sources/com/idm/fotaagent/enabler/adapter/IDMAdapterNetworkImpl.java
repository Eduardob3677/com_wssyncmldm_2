package com.idm.fotaagent.enabler.adapter;

import G2.b;
import android.net.TrafficStats;
import android.text.TextUtils;
import com.idm.adapter.filesystem.a;
import com.idm.adapter.networkinfo.IDMNetworkInfoAdapter;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.database.room.data.repository.AdminRepository;
import com.idm.fotaagent.database.room.data.repository.RegisteredDeviceRepository;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.enabler.fumo.proxy.ProxyHandler;
import com.idm.fotaagent.utils.GeneralUtils;
import com.idm.network.IDMNetworkInterface;
import com.samsung.android.fotaagent.common.FotaTelephonyManager;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.lib.episode.EternalContract;
import com.wssyncmldm.Flavor;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public class IDMAdapterNetworkImpl extends IDMNetworkInfoAdapter {
    private static final int CONNECTION_TIMEOUT_IN_MILLIS = 60000;
    private static final String DEFAULT_MANUFACTURER = "samsung";
    private static final String DEFAULT_MODEL_NAME = "GT-I9100";
    public static final int DL_MAX_RETRY_COUNT = 15;
    public static final int DL_TOTAL_RETRY_COUNT = 1;
    public static final int DM_MAX_RETRY_COUNT = 5;
    public static final int FOTA_UID = 2904;
    static final String HTTP_ACCEPT = "Accept";
    public static final String HTTP_CONNECTION = "Connection";
    private static final String HTTP_CONTENT_TYPE = "Content-Type";
    static final String HTTP_HEADER_DL_ACCEPT = "application/vnd.oma.dd+xml";
    private static final String HTTP_HEADER_DL_CONTENT_TYPE = "application/vnd.oma.dd+xml";
    static final String HTTP_HEADER_DM_ACCEPT = "application/vnd.syncml.dm+wbxml";
    private static final String HTTP_MIME_DM_WBXML_TYPES = "application/vnd.syncml.dm+wbxml";
    static final String HTTP_NETWORK_BEARER = "X-Sec-Download-Network-Bearer";
    private static final String HTTP_SERVICE_TYPE_B2B = "B2B";
    private static final String HTTP_SERVICE_TYPE_B2C = "B2C";
    public static final String HTTP_USER_AGENT = "User-Agent";
    private static final String HTTP_X_SERVICE_TYPE = "x-service-type";
    private static final int RECEIVE_TIMEOUT_IN_MILLIS = 60000;
    private final int appId;
    private boolean isProxy;
    private String proxyIp;
    private int proxyPort;
    private final String taskId;

    public IDMAdapterNetworkImpl(String str, int i5) {
        this.taskId = str;
        this.appId = i5;
        initializeNetworkInfo();
    }

    private void initializeNetworkInfo() {
        int i5 = this.appId;
        idmSetNetworkRetryCount(i5, i5 == 0 ? 5 : 15);
        idmSetConnectNetworkTimeOut(this.appId, EternalContract.ONEUI_6_0_0);
        idmSetRecvNetworkTimeOut(this.appId, EternalContract.ONEUI_6_0_0);
        ProxyHandler proxyHandler = new ProxyHandler(IDMApplication.idmGetContext());
        String address = proxyHandler.getAddress();
        if (TextUtils.isEmpty(address)) {
            return;
        }
        idmSetIsProxy(true);
        idmSetProxyIp(address);
        idmSetProxyPort(proxyHandler.getPort());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$idmMakeHttpHeader$0(String str) {
        return str.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$makeHttpUserAgent$2(String str) {
        return str.length() > 0;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmCustomApnClose() {
        try {
            NetworkApnManager.get().close();
        } catch (IllegalStateException e5) {
            Log.printStackTrace(e5);
        }
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public boolean idmCustomApnOpen() {
        if (!idmGetIsCustomApn()) {
            return false;
        }
        try {
            NetworkApnManager.get().open();
            return true;
        } catch (IllegalStateException e5) {
            Log.printStackTrace(e5);
            return false;
        }
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public boolean idmGetIsCustomApn() {
        return Flavor.Apn.usesConfiguredApn(FotaTelephonyManager.getDataSimSlotId(IDMApplication.idmGetContext()));
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public boolean idmGetIsProxy() {
        return this.isProxy;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public boolean idmGetIsSSLCheck() {
        return new AdminRepository(IDMApplication.idmGetContext()).isSslCheckEnabled();
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public String idmGetObjectUrlAddNetworkInfo(String str) {
        return GeneralUtils.appendExtraParam(IDMApplication.idmGetContext(), str);
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public String idmGetProxyIp() {
        return this.proxyIp;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public int idmGetProxyPort() {
        return this.proxyPort;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmMakeHttpHeader(int i5, HttpURLConnection httpURLConnection, String str, int i6) {
        IDMAdapterDeviceInfoImpl iDMAdapterDeviceInfoImpl = new IDMAdapterDeviceInfoImpl();
        ActionInfoDao actionInfoDao = new ActionInfoDao(this.taskId);
        int fumoStatus = actionInfoDao.getFumoStatus();
        idmSetHttpHeadersMap(IDMNetworkInterface.IDM_HTTP_CACHE_CONTROL, IDMNetworkInterface.IDM_HTTP_CACHE_CONTROL_MODE);
        idmSetHttpHeadersMap("Connection", IDMNetworkInterface.IDM_HTTP_KEEPALIVE);
        idmSetHttpHeadersMap("User-Agent", makeHttpUserAgent());
        idmSetHttpHeadersMap(IDMNetworkInterface.IDM_HTTP_HEADER_ACCEPT_LANGUAGE, IDMNetworkInterface.IDM_HTTP_LANGUAGE);
        idmSetHttpHeadersMap(IDMNetworkInterface.IDM_HTTP_ACCEPT_CHARSET, IDMNetworkInterface.IDM_HTTP_CHARSET_UFT8);
        if (i5 == 0) {
            idmSetHttpHeadersMap(HTTP_X_SERVICE_TYPE, (String) new RegisteredDeviceRepository(IDMApplication.idmGetContext()).getCorpId().filter(new a(7)).map(new b(17)).orElse(HTTP_SERVICE_TYPE_B2C));
            idmSetHttpHeadersMap("Accept", "application/vnd.syncml.dm+wbxml");
            idmSetHttpHeadersMap("Content-Type", "application/vnd.syncml.dm+wbxml");
        } else if (i5 == 1) {
            if (IDMNetworkInterface.IDM_HTTP_METHOD_GET.equals(httpURLConnection.getRequestMethod())) {
                idmSetHttpHeadersMap(HTTP_NETWORK_BEARER, iDMAdapterDeviceInfoImpl.idmGetUsingBearer(IDMApplication.idmGetContext()));
            }
            if (fumoStatus == 10 || fumoStatus == 35 || fumoStatus == 230) {
                idmSetHttpHeadersMap("Accept", "application/vnd.oma.dd+xml");
                idmSetHttpHeadersMap("Content-Type", "application/vnd.oma.dd+xml");
            } else {
                idmSetHttpHeadersMap("Accept", actionInfoDao.getDownloadType());
            }
        }
        super.idmMakeHttpHeader(i5, httpURLConnection, str, i6);
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmSetIsCustomApn() {
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmSetIsProxy(boolean z4) {
        this.isProxy = z4;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmSetProxyIp(String str) {
        this.proxyIp = str;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmSetProxyPort(int i5) {
        this.proxyPort = i5;
    }

    @Override // com.idm.adapter.networkinfo.IDMNetworkInfoAdapter
    public void idmSocketTrafficStats() {
        TrafficStats.setThreadStatsUid(FOTA_UID);
    }

    public String makeHttpUserAgent() {
        String strIdmGetDeviceManufacturer = new IDMAdapterDeviceInfoImpl().idmGetDeviceManufacturer();
        if (TextUtils.isEmpty(strIdmGetDeviceManufacturer)) {
            strIdmGetDeviceManufacturer = DEFAULT_MANUFACTURER;
        }
        return strIdmGetDeviceManufacturer + ' ' + new RegisteredDeviceRepository(IDMApplication.idmGetContext()).getModelName().filter(new a(6)).orElse(DEFAULT_MODEL_NAME) + " SyncML DM Client";
    }
}
