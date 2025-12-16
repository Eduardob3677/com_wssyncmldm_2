package com.samsung.android.lib.episode;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.lib.episode.Scene;
import com.samsung.android.lib.episode.SceneResult;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class EpisodeProvider extends ContentProvider {

    @Deprecated
    public static final String ERROR_TYPE_FEATURE = "FEATURE";

    @Deprecated
    public static final String ERROR_TYPE_INVALID_DATA = "INVALID_DATA";

    @Deprecated
    public static final String ERROR_TYPE_PERMISSION = "PERMISSION";

    @Deprecated
    public static final String ERROR_TYPE_STORAGE_FULL = "STORAGE_FULL";

    @Deprecated
    public static final String ERROR_TYPE_UNKNOWN = "UNKNOWN";

    @Deprecated
    public static final String ERROR_TYPE_UNSUPPORTED_DEVICE_TYPE = "UNSUPPORTED_DEVICE_TYPE";

    @Deprecated
    public static final String EXTRA_ACTION = "ACTION";

    @Deprecated
    public static final String EXTRA_CONVERT_DATA_SET = "convertDataSet";

    @Deprecated
    public static final String EXTRA_CONVERT_ERROR_CODE = "convertErrorCode";

    @Deprecated
    public static final String EXTRA_CONVERT_REQUEST_SIZE = "convertRequestSize";

    @Deprecated
    public static final String EXTRA_CONVERT_RESULT = "convertResult";

    @Deprecated
    public static final String EXTRA_CONVERT_RESULT_SET = "convertDataSet";

    @Deprecated
    public static final String EXTRA_CONVERT_SOURCE = "convertSource";

    @Deprecated
    public static final String EXTRA_CONVERT_TYPE = "convertType";

    @Deprecated
    public static final String EXTRA_EXPORT_SESSION_TIME = "EXPORT_SESSION_TIME";

    @Deprecated
    public static final String EXTRA_FILE_URI = "fileUri";

    @Deprecated
    public static final String EXTRA_SAVE_PATH = "SAVE_PATH";

    @Deprecated
    public static final String EXTRA_SECURITY_LEVEL = "SECURITY_LEVEL";

    @Deprecated
    public static final String EXTRA_SESSION_KEY = "SESSION_KEY";

    @Deprecated
    public static final String EXTRA_SOURCE = "SOURCE";
    private static final String TAG = "Eternal/EpisodeProvider";

    @Deprecated
    public static final String TYPE_SCLOUD = "sCloud";

    @Deprecated
    public static final String TYPE_SMART_SWITCH = "smartSwitch";

    /* renamed from: com.samsung.android.lib.episode.EpisodeProvider$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType;

        static {
            int[] iArr = new int[SceneResult.ErrorType.values().length];
            $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType = iArr;
            try {
                iArr[SceneResult.ErrorType.INVALID_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[SceneResult.ErrorType.STORAGE_FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[SceneResult.ErrorType.UNKNOWN_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[SceneResult.ErrorType.NOT_SUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[SceneResult.ErrorType.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[SceneResult.ErrorType.DEVICE_TYPE_MISMATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private float getEpisodeVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.valueOf(str).floatValue();
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    private List<Scene> getErrorSceneList(List<SceneResult> list) {
        ArrayList arrayList = new ArrayList();
        for (SceneResult sceneResult : list) {
            if (sceneResult.hasError()) {
                Scene.Builder builder = new Scene.Builder(sceneResult.getKey());
                builder.addAttribute(EternalContract.EXTRA_RESTORE_ERROR_TYPE, migrationErrorType(sceneResult.getErrorType()));
                arrayList.add(builder.build());
            }
        }
        return arrayList;
    }

    private Cursor getLoggingData() {
        return null;
    }

    private String getMappingTableData() throws Resources.NotFoundException, IOException {
        try {
            InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(R.raw.action_key_map);
            try {
                String uid = getUID();
                int iAvailable = inputStreamOpenRawResource.available();
                if (iAvailable < 1) {
                    Log.e(TAG, "getMappingTable() - inputStream is empty");
                    inputStreamOpenRawResource.close();
                    return null;
                }
                byte[] bArr = new byte[iAvailable];
                inputStreamOpenRawResource.read(bArr);
                JSONObject jSONObject = new JSONObject(new String(bArr)).getJSONObject(uid);
                if (jSONObject != null) {
                    String string = jSONObject.toString();
                    inputStreamOpenRawResource.close();
                    return string;
                }
                Log.e(TAG, "[" + uid + "] getMappingTableData() uidKeyMap is null");
                inputStreamOpenRawResource.close();
                return null;
            } finally {
            }
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private List<Scene> getSceneListFromBundle(Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        for (String str : bundle.keySet()) {
            Scene.Builder builder = new Scene.Builder(str);
            builder.setBundle(bundle.getBundle(str));
            arrayList.add(builder.build());
        }
        return arrayList;
    }

    private SourceInfo getSourceInfoFromBundle(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("version");
        String string = bundle2 != null ? bundle2.getString("version") : null;
        Bundle bundle3 = bundle.getBundle(EternalContract.EXTRA_DEVICE_TYPE);
        String string2 = bundle3 != null ? bundle3.getString("value") : null;
        bundle.remove("version");
        bundle.remove(EternalContract.EXTRA_DEVICE_TYPE);
        return new SourceInfo(string2, string, "");
    }

    private String migrationErrorType(SceneResult.ErrorType errorType) {
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$lib$episode$SceneResult$ErrorType[errorType.ordinal()]) {
            case 1:
                return "INVALID_DATA";
            case 2:
                return "STORAGE_FULL";
            case 3:
                return "UNKNOWN";
            case 4:
                return "FEATURE";
            case 5:
                return "PERMISSION";
            case 6:
                return "UNSUPPORTED_DEVICE_TYPE";
            default:
                return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x03ab  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bundle call(String str, String str2, Bundle bundle) throws Resources.NotFoundException, IOException {
        boolean z4;
        Bundle bundle2;
        ArrayList parcelableArrayList;
        Bundle bundle3;
        List<String> keySet;
        List<Scene> parcelableArrayList2;
        SourceInfo sourceInfo;
        String uid = getUID();
        if (str == null) {
            Log.e(TAG, "[" + uid + "] method is null");
            return null;
        }
        if (!verifyCallingPackage(str)) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        z4 = getEpisodeVersion(str2) < 2.0f;
        switch (str) {
            case "get_entries":
                bundle2 = new Bundle();
                HashMap<Object, Object> entries = getEntries(bundle.getString(EternalContract.EXTRA_KEY_LIST));
                if (entries != null) {
                    bundle2.putSerializable(EternalContract.EXTRA_ENTRIES, entries);
                    break;
                }
                break;
            case "validate":
                if (bundle == null) {
                    Log.e(TAG, "[" + uid + "]" + str + " extra is empty");
                } else {
                    try {
                        bundle.setClassLoader(Scene.class.getClassLoader());
                        parcelableArrayList = bundle.getParcelableArrayList(EternalContract.EXTRA_SCENE_LIST);
                        if (parcelableArrayList == null) {
                            if (parcelableArrayList.size() >= 2) {
                            }
                        }
                        bundle3 = new Bundle();
                    } catch (Exception e5) {
                        e = e5;
                        bundle2 = null;
                    }
                    try {
                        bundle3.putBoolean("value", isValid((Scene) parcelableArrayList.get(0), (Scene) parcelableArrayList.get(1)));
                        bundle2 = bundle3;
                    } catch (Exception e6) {
                        e = e6;
                        bundle2 = bundle3;
                        e.printStackTrace();
                        Log.d(TAG, "[" + uid + "]" + str + " took time : " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        return bundle2;
                    }
                }
                bundle2 = null;
            case "is_supported":
                bundle2 = new Bundle();
                String string = bundle.getString(EternalContract.EXTRA_KEY_LIST);
                SceneResult.Builder builder = new SceneResult.Builder(string);
                if (isSupported(string)) {
                    builder.setResult(SceneResult.ResultType.RESULT_OK);
                } else {
                    builder.setResult(SceneResult.ResultType.RESULT_FAIL).setErrorType(SceneResult.ErrorType.NOT_SUPPORTED);
                }
                bundle2.putParcelable(EternalContract.EXTRA_SCENE_RESULT, builder.build());
                break;
            case "is_openable":
                bundle2 = new Bundle();
                bundle2.putParcelable(EternalContract.EXTRA_SCENE_RESULT, isOpenable(bundle.getString(EternalContract.EXTRA_KEY_LIST)));
                break;
            case "get_mapping_table":
                bundle2 = new Bundle();
                String mappingTableData = getMappingTableData();
                if (TextUtils.isEmpty(mappingTableData)) {
                    Log.e(TAG, "[" + uid + "]" + str + " mappingTableData is empty");
                    break;
                } else {
                    bundle2.putString(EternalContract.EXTRA_KEY_LIST, mappingTableData);
                    break;
                }
            case "get_value_all":
            case "get_value":
                SourceInfo sourceInfo2 = new SourceInfo(bundle);
                if (bundle == null || bundle.isEmpty()) {
                    Log.e(TAG, "[" + uid + "] extra is empty");
                    keySet = getKeySet();
                } else if (z4) {
                    keySet = new ArrayList<>(bundle.keySet());
                } else {
                    try {
                        keySet = (List) bundle.getSerializable(EternalContract.EXTRA_KEY_LIST);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                        keySet = null;
                    }
                }
                StringBuilder sb = new StringBuilder("[");
                sb.append(uid);
                sb.append("]");
                sb.append(str);
                sb.append(" keyList size = ");
                sb.append(keySet == null ? 0 : keySet.size());
                Log.d(TAG, sb.toString());
                List<Scene> values = getValues(keySet, sourceInfo2);
                StringBuilder sb2 = new StringBuilder("[");
                sb2.append(uid);
                sb2.append("]");
                sb2.append(str);
                sb2.append(" count = ");
                sb2.append(values == null ? 0 : values.size());
                Log.d(TAG, sb2.toString());
                if (values != null && !values.isEmpty()) {
                    bundle2 = new Bundle();
                    if (z4) {
                        for (Scene scene : values) {
                            bundle2.putBundle(scene.getKey(), scene.getBundle());
                        }
                        break;
                    } else {
                        bundle2.putParcelableArrayList(EternalContract.EXTRA_SCENE_LIST, (ArrayList) values);
                        bundle2.putString("version", getVersion());
                        bundle2.putString("dtd_version", EpisodeConstant.DTD_VERSION);
                        break;
                    }
                } else {
                    bundle2 = null;
                    break;
                }
                break;
            case "get_uid":
                bundle2 = new Bundle();
                bundle2.putString("uid", uid);
                break;
            case "open":
                open(bundle.getString(EternalContract.EXTRA_KEY_LIST));
                bundle2 = null;
                break;
            case "get_version":
                bundle2 = new Bundle();
                bundle2.putString("version", getVersion());
                break;
            case "set_value_all":
            case "set_value":
                if (bundle == null) {
                    Log.e(TAG, "[" + uid + "]" + str + " extra is null");
                } else {
                    try {
                        if (z4) {
                            sourceInfo = getSourceInfoFromBundle(bundle);
                            parcelableArrayList2 = getSceneListFromBundle(bundle);
                        } else {
                            bundle.setClassLoader(Scene.class.getClassLoader());
                            parcelableArrayList2 = bundle.getParcelableArrayList(EternalContract.EXTRA_SCENE_LIST);
                            sourceInfo = new SourceInfo(bundle);
                        }
                        List<SceneResult> values2 = setValues(sourceInfo, parcelableArrayList2);
                        StringBuilder sb3 = new StringBuilder("[");
                        sb3.append(uid);
                        sb3.append("]");
                        sb3.append(str);
                        sb3.append(" count = ");
                        sb3.append(parcelableArrayList2 == null ? 0 : parcelableArrayList2.size());
                        sb3.append(" / result count = ");
                        sb3.append(values2 == null ? 0 : values2.size());
                        Log.d(TAG, sb3.toString());
                        if (values2 != null && !values2.isEmpty()) {
                            bundle3 = new Bundle();
                            try {
                                if (z4) {
                                    for (Scene scene2 : getErrorSceneList(values2)) {
                                        bundle3.putBundle(scene2.getKey(), scene2.getBundle());
                                    }
                                } else {
                                    bundle3.putParcelableArrayList(EternalContract.EXTRA_SCENE_RESULT, (ArrayList) values2);
                                }
                                bundle2 = bundle3;
                            } catch (Exception e8) {
                                e = e8;
                                bundle2 = bundle3;
                                e.printStackTrace();
                                Log.d(TAG, "[" + uid + "]" + str + " took time : " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                return bundle2;
                            }
                        }
                    } catch (Exception e9) {
                        e = e9;
                        bundle2 = null;
                    }
                }
                bundle2 = null;
                break;
            case "get_test_value":
                List<Scene> testScenes = getTestScenes(bundle.getString(EternalContract.EXTRA_KEY_LIST));
                if (testScenes != null && !testScenes.isEmpty()) {
                    bundle2 = new Bundle();
                    bundle2.putParcelableArrayList(EternalContract.EXTRA_SCENE_LIST, (ArrayList) testScenes);
                    bundle2.putString("version", getVersion());
                    bundle2.putString("dtd_version", EpisodeConstant.DTD_VERSION);
                    break;
                }
                break;
            case "get_label":
                Bundle bundle4 = new Bundle();
                if (z4) {
                    bundle4.putSerializable("value", (Serializable) getKeySet());
                } else {
                    bundle4.putSerializable(EternalContract.EXTRA_KEY_LIST, (Serializable) getKeySet());
                }
                bundle2 = bundle4;
                break;
            case "get_dtd_ver":
                bundle2 = new Bundle();
                bundle2.putString("dtd_version", EpisodeConstant.DTD_VERSION);
                break;
            default:
                Log.e(TAG, "Unsupported method called : ".concat(str));
                bundle2 = null;
                break;
        }
        Log.d(TAG, "[" + uid + "]" + str + " took time : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public HashMap<Object, Object> getEntries(String str) {
        return null;
    }

    public abstract List<String> getKeySet();

    public List<Scene> getTestScenes(String str) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    public abstract String getUID();

    public abstract List<Scene> getValues(List<String> list);

    public List<Scene> getValues(List<String> list, SourceInfo sourceInfo) {
        return getValues(list);
    }

    public abstract String getVersion();

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Deprecated
    public SceneResult isOpenable(String str) {
        return null;
    }

    public boolean isSupported(String str) {
        return true;
    }

    public abstract boolean isValid(Scene scene, Scene scene2);

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Deprecated
    public void open(String str) {
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public abstract List<SceneResult> setValues(SourceInfo sourceInfo, List<Scene> list);

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public boolean verifyCallingPackage(String str) {
        String callingPackage = getCallingPackage();
        if (!TextUtils.isEmpty(callingPackage)) {
            for (String str2 : EternalContract.WELL_KNOWN_CALLING_PACKAGES) {
                if (callingPackage.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
            Log.i(TAG, "[" + callingPackage + "]" + str + " rejected");
        }
        return false;
    }
}
