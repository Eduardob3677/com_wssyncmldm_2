package A;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import com.idm.agent.dm.IDMDmInterface;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f36a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f37b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f38c = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (r4.f27c == r9.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList a(Resources resources, int i5, Resources.Theme theme) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        m mVar;
        n nVar = new n(resources, theme);
        synchronized (f38c) {
            try {
                SparseArray sparseArray = (SparseArray) f37b.get(nVar);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (mVar = (m) sparseArray.get(i5)) == null) {
                    colorStateList = null;
                } else {
                    if (mVar.f26b.equals(resources.getConfiguration())) {
                        if (theme != null || mVar.f27c != 0) {
                            if (theme != null) {
                            }
                        }
                        colorStateList = mVar.f25a;
                    }
                    sparseArray.remove(i5);
                    colorStateList = null;
                }
            } finally {
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = f36a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i5, typedValue, true);
        int i6 = typedValue.type;
        if (i6 < 28 || i6 > 31) {
            try {
                colorStateListA = c.a(resources, resources.getXml(i5), theme);
            } catch (Exception e5) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e5);
            }
        }
        if (colorStateListA == null) {
            return l.b(resources, i5, theme);
        }
        synchronized (f38c) {
            try {
                WeakHashMap weakHashMap = f37b;
                SparseArray sparseArray2 = (SparseArray) weakHashMap.get(nVar);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    weakHashMap.put(nVar, sparseArray2);
                }
                sparseArray2.append(i5, new m(colorStateListA, nVar.f28a.getConfiguration(), theme));
            } finally {
            }
        }
        return colorStateListA;
    }

    public static Typeface b(Context context, int i5) {
        if (context.isRestricted()) {
            return null;
        }
        return c(context, i5, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c9 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface c(Context context, int i5, TypedValue typedValue, int i6, b bVar, boolean z4, boolean z5) throws InterruptedException, Resources.NotFoundException {
        Resources resources = context.getResources();
        resources.getValue(i5, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i5) + "\" (" + Integer.toHexString(i5) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceB = null;
        if (string.startsWith("res/")) {
            Typeface typeface = (Typeface) B.h.f190b.a(B.h.d(resources, i5, string, typedValue.assetCookie, i6));
            if (typeface != null) {
                if (bVar != null) {
                    new Handler(Looper.getMainLooper()).post(new o(bVar, 0, typeface));
                }
                typefaceB = typeface;
            } else if (!z5) {
                try {
                    if (string.toLowerCase().endsWith(IDMDmInterface.IDM_FILE_EXTENSION_XML)) {
                        f fVarJ = b.j(resources.getXml(i5), resources);
                        if (fVarJ == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (bVar != null) {
                                bVar.a(-3);
                            }
                        } else {
                            typefaceB = B.h.b(context, fVarJ, resources, i5, string, typedValue.assetCookie, i6, bVar, z4);
                        }
                    } else {
                        Typeface typefaceC = B.h.c(resources, i5, string, typedValue.assetCookie, i6);
                        if (bVar != null) {
                            if (typefaceC != null) {
                                new Handler(Looper.getMainLooper()).post(new o(bVar, 0, typefaceC));
                            } else {
                                bVar.a(-3);
                            }
                        }
                        typefaceB = typefaceC;
                    }
                } catch (IOException e5) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), e5);
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                    if (typefaceB == null) {
                    }
                    return typefaceB;
                } catch (XmlPullParserException e6) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), e6);
                    if (bVar != null) {
                    }
                    if (typefaceB == null) {
                    }
                    return typefaceB;
                }
            }
        } else if (bVar != null) {
            bVar.a(-3);
        }
        if (typefaceB == null || bVar != null || z5) {
            return typefaceB;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i5) + " could not be retrieved.");
    }
}
