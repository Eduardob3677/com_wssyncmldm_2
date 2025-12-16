package L2;

import android.content.Context;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import f1.AbstractC0420a;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public Context f1356a;

    /* renamed from: b, reason: collision with root package name */
    public String f1357b;

    /* renamed from: c, reason: collision with root package name */
    public String f1358c;

    /* renamed from: d, reason: collision with root package name */
    public String f1359d;

    /* renamed from: e, reason: collision with root package name */
    public String f1360e;

    public static JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            jSONObject.put("TOTAL", (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) >> 20);
            StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
            jSONObject.put("FREE", (statFs2.getAvailableBlocksLong() * statFs2.getBlockSizeLong()) >> 20);
        } catch (JSONException e5) {
            AbstractC0420a.t(e5.getMessage());
        }
        return jSONObject;
    }

    public static JSONObject b() throws JSONException {
        long nativeHeapFreeSize = Debug.getNativeHeapFreeSize() >> 20;
        long nativeHeapSize = Debug.getNativeHeapSize() >> 20;
        long nativeHeapAllocatedSize = Debug.getNativeHeapAllocatedSize() >> 20;
        AbstractC0420a.r("[NativeHeap] nativeHeapSize : " + nativeHeapSize + " nativeHeapFree : " + nativeHeapFreeSize + " nativeHeapAllocatedSize : " + nativeHeapAllocatedSize);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("HEAP_SIZE", nativeHeapSize);
            jSONObject.put("HEAP_FREE", nativeHeapFreeSize);
            jSONObject.put("HEAD_ALLOC", nativeHeapAllocatedSize);
        } catch (JSONException e5) {
            AbstractC0420a.t(e5.getMessage());
        }
        return jSONObject;
    }

    public static JSONObject c() throws JSONException {
        Runtime runtime = Runtime.getRuntime();
        long j3 = runtime.totalMemory() >> 20;
        long jFreeMemory = runtime.freeMemory() >> 20;
        long jMaxMemory = runtime.maxMemory() >> 20;
        AbstractC0420a.r("[VM] TotalMemory : " + j3 + " FreeMemory : " + jFreeMemory + " maxMemory : " + jMaxMemory);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("TOTAL", j3);
            jSONObject.put("FREE", jFreeMemory);
            jSONObject.put("MAX", jMaxMemory);
        } catch (JSONException e5) {
            AbstractC0420a.t(e5.getMessage());
        }
        return jSONObject;
    }
}
