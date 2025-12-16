package com.idm.fotaagent.utils.rangerequest;

import android.text.TextUtils;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.enabler.adapter.IDMAdapterNetworkImpl;
import com.idm.fotaagent.enabler.fumo.proxy.ProxyHandler;
import com.idm.fotaagent.utils.rangerequest.RangeRequest;
import com.idm.fotaagent.utils.rangerequest.exception.HttpResponseCodeException;
import com.idm.network.IDMNetworkInterface;
import com.samsung.android.lib.episode.EternalContract;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpRangeRequest extends RangeRequest {
    private volatile HttpURLConnection connection;

    public HttpRangeRequest(URL url, Path path) {
        this(url, path, null);
    }

    private Map<String, String> getRequestProperties(HttpURLConnection httpURLConnection, RangeRequest.Range range) {
        HashMap map = new HashMap();
        map.put(IDMNetworkInterface.IDM_HTTP_HEADER_RANGE, "bytes=" + range.start() + "-" + range.end());
        map.put(IDMNetworkInterface.IDM_HTTP_CACHE_CONTROL, IDMNetworkInterface.IDM_HTTP_CACHE_CONTROL_MODE);
        map.put("Connection", IDMNetworkInterface.IDM_HTTP_KEEPALIVE);
        map.put("User-Agent", new IDMAdapterNetworkImpl(new ActionInfoDao().getSessionId(), 1).makeHttpUserAgent());
        URL url = httpURLConnection.getURL();
        map.put(IDMNetworkInterface.IDM_HTTP_HEADER_HOST, url.getHost() + ":" + (url.getPort() == -1 ? url.getDefaultPort() : url.getPort()));
        return map;
    }

    private Proxy proxy() {
        ProxyHandler proxyHandler = new ProxyHandler(IDMApplication.idmGetContext());
        String address = proxyHandler.getAddress();
        if (TextUtils.isEmpty(address)) {
            return null;
        }
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(address, proxyHandler.getPort()));
    }

    @Override // com.idm.fotaagent.utils.rangerequest.RangeRequest
    public void finalize(Thread thread) {
        super.finalize(thread);
        if (this.connection != null) {
            this.connection.disconnect();
        }
    }

    public HttpURLConnection getConnection() {
        return this.connection;
    }

    @Override // com.idm.fotaagent.utils.rangerequest.RangeRequest
    public InputStream getInputStream(RangeRequest.Range range) throws IOException, HttpResponseCodeException {
        Proxy proxy = proxy();
        this.connection = (HttpURLConnection) (proxy == null ? this.url.openConnection() : this.url.openConnection(proxy));
        this.connection.setConnectTimeout(EternalContract.ONEUI_6_0_0);
        this.connection.setReadTimeout(EternalContract.ONEUI_6_0_0);
        for (Map.Entry<String, String> entry : getRequestProperties(this.connection, range).entrySet()) {
            this.connection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        this.connection.connect();
        int responseCode = this.connection.getResponseCode();
        if (206 == responseCode) {
            return this.connection.getInputStream();
        }
        throw new HttpResponseCodeException(responseCode, "responseCode(" + responseCode + ") should be 206");
    }

    public HttpRangeRequest(URL url, Path path, RangeRequest.OnFileLengthChangedListener onFileLengthChangedListener) {
        super(url, path, onFileLengthChangedListener);
        this.connection = null;
    }
}
