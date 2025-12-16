package P1;

import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.Parcel;
import android.text.Editable;
import android.text.Selection;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import androidx.databinding.w;
import com.google.android.gms.common.api.Status;
import com.samsung.android.knox.license.KnoxEnterpriseLicenseManager;
import e.InterfaceC0398b;
import h0.InterfaceC0434e;
import j.InterfaceC0519t;
import j.MenuC0508i;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import m1.AbstractC0704b;
import m1.C0705c;
import m1.C0706d;

/* loaded from: classes.dex */
public class e implements N0.b, androidx.databinding.d, b1.l, InterfaceC0398b, InterfaceC0434e, InterfaceC0519t, b1.k {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2054c;

    public /* synthetic */ e(int i5) {
        this.f2054c = i5;
    }

    public static Font e(FontFamily fontFamily, int i5) {
        FontStyle fontStyle = new FontStyle((i5 & 1) != 0 ? KnoxEnterpriseLicenseManager.ERROR_LICENSE_DEACTIVATED : 400, (i5 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iG = g(fontStyle, font.getStyle());
        for (int i6 = 1; i6 < fontFamily.getSize(); i6++) {
            Font font2 = fontFamily.getFont(i6);
            int iG2 = g(fontStyle, font2.getStyle());
            if (iG2 < iG) {
                font = font2;
                iG = iG2;
            }
        }
        return font;
    }

    public static int g(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0049, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0086, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0070 A[EDGE_INSN: B:91:0x0070->B:48:0x0070 BREAK  A[LOOP:2: B:49:0x0072->B:60:0x0089, LOOP_LABEL: LOOP:2: B:49:0x0072->B:60:0x0089], EDGE_INSN: B:94:0x0070->B:48:0x0070 BREAK  A[LOOP:2: B:49:0x0072->B:60:0x0089]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00a6 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean h(InputConnection inputConnection, Editable editable, int i5, int i6, boolean z4) {
        int iMin;
        if (editable == null || inputConnection == null || i5 < 0 || i6 < 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) {
            return false;
        }
        if (z4) {
            int iMax = Math.max(i5, 0);
            int length = editable.length();
            if (selectionStart < 0 || length < selectionStart || iMax < 0) {
                selectionStart = -1;
                int iMax2 = Math.max(i6, 0);
                iMin = editable.length();
                if (selectionEnd < 0 && iMin >= selectionEnd && iMax2 >= 0) {
                    loop2: while (true) {
                        boolean z5 = false;
                        while (true) {
                            if (iMax2 == 0) {
                                iMin = selectionEnd;
                                break loop2;
                            }
                            if (selectionEnd >= iMin) {
                                if (z5) {
                                    break loop2;
                                }
                            } else {
                                char cCharAt = editable.charAt(selectionEnd);
                                if (z5) {
                                    break;
                                }
                                if (!Character.isSurrogate(cCharAt)) {
                                    iMax2--;
                                    selectionEnd++;
                                } else {
                                    if (Character.isLowSurrogate(cCharAt)) {
                                        break loop2;
                                    }
                                    selectionEnd++;
                                    z5 = true;
                                }
                            }
                        }
                        iMax2--;
                        selectionEnd++;
                    }
                    iMin = -1;
                    return selectionStart == -1 ? false : false;
                }
                iMin = -1;
                if (selectionStart == -1 || iMin == -1) {
                }
            } else {
                loop0: while (true) {
                    boolean z6 = false;
                    while (true) {
                        if (iMax == 0) {
                            break loop0;
                        }
                        selectionStart--;
                        if (selectionStart >= 0) {
                            char cCharAt2 = editable.charAt(selectionStart);
                            if (z6) {
                                break;
                            }
                            if (!Character.isSurrogate(cCharAt2)) {
                                iMax--;
                            } else {
                                if (Character.isHighSurrogate(cCharAt2)) {
                                    break loop0;
                                }
                                z6 = true;
                            }
                        } else {
                            if (z6) {
                                break;
                            }
                            selectionStart = 0;
                        }
                    }
                    iMax--;
                }
                selectionStart = -1;
                int iMax22 = Math.max(i6, 0);
                iMin = editable.length();
                if (selectionEnd < 0) {
                    iMin = -1;
                    if (selectionStart == -1) {
                    }
                }
            }
        } else {
            selectionStart = Math.max(selectionStart - i5, 0);
            iMin = Math.min(selectionEnd + i6, editable.length());
        }
        androidx.emoji2.text.t[] tVarArr = (androidx.emoji2.text.t[]) editable.getSpans(selectionStart, iMin, androidx.emoji2.text.t.class);
        if (tVarArr == null || tVarArr.length <= 0) {
            return false;
        }
        for (androidx.emoji2.text.t tVar : tVarArr) {
            int spanStart = editable.getSpanStart(tVar);
            int spanEnd = editable.getSpanEnd(tVar);
            selectionStart = Math.min(spanStart, selectionStart);
            iMin = Math.max(spanEnd, iMin);
        }
        int iMax3 = Math.max(selectionStart, 0);
        int iMin2 = Math.min(iMin, editable.length());
        inputConnection.beginBatchEdit();
        editable.delete(iMax3, iMin2);
        inputConnection.endBatchEdit();
        return true;
    }

    @Override // j.InterfaceC0519t
    public void a(MenuC0508i menuC0508i, boolean z4) {
    }

    @Override // j.InterfaceC0519t
    public boolean b(MenuC0508i menuC0508i) {
        return false;
    }

    @Override // b1.k
    public void c(a1.b bVar, u1.i iVar) {
        C0705c c0705c = (C0705c) ((m1.e) bVar).h();
        m1.f fVar = new m1.f(iVar);
        c0705c.getClass();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        int i5 = AbstractC0704b.f8262a;
        parcelObtain.writeStrongBinder(fVar);
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            c0705c.f8263a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // b1.l
    public Exception d(Status status) {
        return status.f != null ? new a1.h(status) : new W1.h(status);
    }

    @Override // androidx.databinding.d
    public w f(androidx.databinding.v vVar, int i5, ReferenceQueue referenceQueue) {
        return new androidx.databinding.t(vVar, i5, referenceQueue, 1).f3678b;
    }

    @Override // P2.a
    public Object get() {
        switch (this.f2054c) {
            case 3:
                return new L0.i(Executors.newSingleThreadExecutor());
            case 4:
                return R0.a.f;
            default:
                return new T0.b(0);
        }
    }

    @Override // h0.InterfaceC0434e
    public void n() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // h0.InterfaceC0434e
    public void q(int i5, Object obj) {
        String str;
        switch (i5) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i5 == 6 || i5 == 7 || i5 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
    }

    public e(C0706d c0706d) {
        this.f2054c = 16;
    }

    public e() {
        this.f2054c = 1;
        new ConcurrentHashMap();
    }
}
