package m2;

import W1.g;
import W1.j;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.idm.core.syncml.Constants;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import k.Q0;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f8272c = {"*", "FCM", "GCM", ""};

    /* renamed from: a, reason: collision with root package name */
    public final Object f8273a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8274b;

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b(g gVar, int i5) {
        switch (i5) {
            case 1:
                gVar.a();
                this.f8273a = new File(gVar.f2823a.getFilesDir(), "PersistedInstallation." + gVar.f() + ".json");
                this.f8274b = gVar;
                break;
            default:
                gVar.a();
                this.f8273a = gVar.f2823a.getSharedPreferences("com.google.android.gms.appid", 0);
                gVar.a();
                j jVar = gVar.f2825c;
                String str = jVar.f2834e;
                if (str == null) {
                    gVar.a();
                    str = jVar.f2831b;
                    if (str.startsWith("1:") || str.startsWith("2:")) {
                        String[] strArrSplit = str.split(":");
                        if (strArrSplit.length != 4) {
                            str = null;
                        } else {
                            str = strArrSplit[1];
                            if (str.isEmpty()) {
                            }
                        }
                    }
                }
                this.f8274b = str;
                break;
        }
    }

    public void a(C0707a c0707a) throws JSONException, IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", c0707a.f8266a);
            jSONObject.put(Constants.SYNCML_TAG_STATUS, Q0.f(c0707a.f8267b));
            jSONObject.put("AuthToken", c0707a.f8268c);
            jSONObject.put("RefreshToken", c0707a.f8269d);
            jSONObject.put("TokenCreationEpochInSecs", c0707a.f);
            jSONObject.put("ExpiresInSecs", c0707a.f8270e);
            jSONObject.put("FisError", c0707a.f8271g);
            g gVar = (g) this.f8274b;
            gVar.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", gVar.f2823a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo((File) this.f8273a)) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public C0707a b() throws IOException {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT];
        try {
            FileInputStream fileInputStream = new FileInputStream((File) this.f8273a);
            while (true) {
                try {
                    int i5 = fileInputStream.read(bArr, 0, NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT);
                    if (i5 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i5);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int iOptInt = jSONObject.optInt(Constants.SYNCML_TAG_STATUS, 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i6 = C0707a.f8265h;
        K3.b bVar = new K3.b();
        bVar.f1291g = 0L;
        bVar.b(1);
        bVar.f = 0L;
        bVar.f1287b = strOptString;
        bVar.b(Q0.h(5)[iOptInt]);
        bVar.f1289d = strOptString2;
        bVar.f1290e = strOptString3;
        bVar.f1291g = Long.valueOf(jOptLong);
        bVar.f = Long.valueOf(jOptLong2);
        bVar.f1292h = strOptString4;
        return bVar.a();
    }

    public String c() {
        PublicKey publicKeyGeneratePublic;
        synchronized (((SharedPreferences) this.f8273a)) {
            String strEncodeToString = null;
            String string = ((SharedPreferences) this.f8273a).getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e5) {
                Log.w("ContentValues", "Invalid key stored " + e5);
                publicKeyGeneratePublic = null;
            }
            if (publicKeyGeneratePublic == null) {
                return null;
            }
            try {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKeyGeneratePublic.getEncoded());
                bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + 112) & CustomDeviceManager.CALL_SCREEN_ALL);
                strEncodeToString = Base64.encodeToString(bArrDigest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
                Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            }
            return strEncodeToString;
        }
    }
}
