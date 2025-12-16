package A;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.wssyncmldm.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;
import x.AbstractC0903a;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f9a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlResourceParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008f  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList b(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int color;
        int[] iArr;
        int i5;
        boolean z4;
        int iE;
        float f;
        float f5;
        float f6;
        float fCbrt;
        float f7;
        ?? r0 = resources;
        AttributeSet attributeSet2 = attributeSet;
        Resources.Theme theme2 = theme;
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        boolean z5 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        int[][] iArr2 = new int[20][];
        int[] iArr3 = new int[20];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == z5 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr4 = AbstractC0903a.f9616a;
                ?? ObtainAttributes = theme2 == null ? r0.obtainAttributes(attributeSet2, iArr4) : theme2.obtainStyledAttributes(attributeSet2, iArr4, i6, i6);
                int resourceId = ObtainAttributes.getResourceId(i6, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f9a;
                    TypedValue typedValue = (TypedValue) threadLocal.get();
                    if (typedValue == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    }
                    r0.getValue(resourceId, typedValue, z5);
                    int i8 = typedValue.type;
                    if (i8 < 28 || i8 > 31) {
                        try {
                            color = a(r0, r0.getXml(resourceId), theme2).getDefaultColor();
                        } catch (Exception unused) {
                            color = ObtainAttributes.getColor(i6, -65281);
                        }
                    } else {
                        color = ObtainAttributes.getColor(i6, -65281);
                    }
                    float f8 = ObtainAttributes.hasValue(z5) ? ObtainAttributes.getFloat(z5, 1.0f) : ObtainAttributes.hasValue(3) ? ObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                    float f9 = ObtainAttributes.hasValue(2) ? ObtainAttributes.getFloat(2, -1.0f) : ObtainAttributes.getFloat(4, -1.0f);
                    ObtainAttributes.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr5 = new int[attributeCount];
                    int i9 = i6;
                    for (int i10 = i9; i10 < attributeCount; i10++) {
                        int attributeNameResource = attributeSet2.getAttributeNameResource(i10);
                        if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                            int i11 = i9 + 1;
                            if (!attributeSet2.getAttributeBooleanValue(i10, false)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr5[i9] = attributeNameResource;
                            i9 = i11;
                        }
                    }
                    int[] iArrTrimStateSet = StateSet.trimStateSet(iArr5, i9);
                    float f10 = 0.0f;
                    float f11 = 100.0f;
                    boolean z6 = f9 >= 0.0f && f9 <= 100.0f;
                    if (f8 != 1.0f || z6) {
                        int iN = Z0.j.n((int) ((Color.alpha(color) * f8) + 0.5f), 0, CustomDeviceManager.CALL_SCREEN_ALL);
                        if (z6) {
                            a aVarA = a.a(color);
                            s sVar = s.f39k;
                            float f12 = aVarA.f1b;
                            if (f12 < 1.0d || Math.round(f9) <= 0.0d || Math.round(f9) >= 100.0d) {
                                iArr = iArrTrimStateSet;
                                i5 = depth2;
                                z4 = true;
                                iE = b.e(f9);
                            } else {
                                float f13 = aVarA.f0a;
                                float fMin = f13 < 0.0f ? 0.0f : Math.min(360.0f, f13);
                                float f14 = 0.0f;
                                float f15 = f12;
                                a aVar = null;
                                boolean z7 = true;
                                while (true) {
                                    if (Math.abs(f14 - f12) >= 0.4f) {
                                        float f16 = 1000.0f;
                                        float f17 = f10;
                                        float f18 = f11;
                                        float f19 = 1000.0f;
                                        a aVar2 = null;
                                        while (true) {
                                            if (Math.abs(f17 - f18) <= 0.01f) {
                                                i5 = depth2;
                                                f = fMin;
                                                f5 = f11;
                                                z4 = true;
                                                float f20 = f10;
                                                iArr = iArrTrimStateSet;
                                                f6 = f20;
                                                break;
                                            }
                                            float f21 = ((f18 - f17) / 2.0f) + f17;
                                            int iC = a.b(f21, f15, fMin).c(s.f39k);
                                            float f22 = b.f(Color.red(iC));
                                            float f23 = b.f(Color.green(iC));
                                            float f24 = b.f(Color.blue(iC));
                                            z4 = true;
                                            float[] fArr = b.f8d[1];
                                            f5 = 100.0f;
                                            float f25 = ((f24 * fArr[2]) + ((f23 * fArr[1]) + (f22 * fArr[0]))) / 100.0f;
                                            if (f25 <= 0.008856452f) {
                                                fCbrt = f25 * 903.2963f;
                                                i5 = depth2;
                                            } else {
                                                i5 = depth2;
                                                fCbrt = (((float) Math.cbrt(f25)) * 116.0f) - 16.0f;
                                            }
                                            float fAbs = Math.abs(f9 - fCbrt);
                                            if (fAbs < 0.2f) {
                                                a aVarA2 = a.a(iC);
                                                a aVarB = a.b(aVarA2.f2c, aVarA2.f1b, fMin);
                                                f7 = f21;
                                                float f26 = aVarA2.f3d - aVarB.f3d;
                                                f = fMin;
                                                float f27 = aVarA2.f4e - aVarB.f4e;
                                                float f28 = aVarA2.f - aVarB.f;
                                                double dSqrt = Math.sqrt((f28 * f28) + (f27 * f27) + (f26 * f26));
                                                iArr = iArrTrimStateSet;
                                                float fPow = (float) (Math.pow(dSqrt, 0.63d) * 1.41d);
                                                if (fPow <= 1.0f) {
                                                    f19 = fPow;
                                                    aVar2 = aVarA2;
                                                    f16 = fAbs;
                                                }
                                            } else {
                                                f7 = f21;
                                                f = fMin;
                                                iArr = iArrTrimStateSet;
                                            }
                                            f6 = 0.0f;
                                            if (f16 == 0.0f && f19 == 0.0f) {
                                                break;
                                            }
                                            if (fCbrt < f9) {
                                                f17 = f7;
                                            } else {
                                                f18 = f7;
                                            }
                                            f11 = 100.0f;
                                            depth2 = i5;
                                            fMin = f;
                                            int[] iArr6 = iArr;
                                            f10 = 0.0f;
                                            iArrTrimStateSet = iArr6;
                                        }
                                        a aVar3 = aVar2;
                                        if (!z7) {
                                            if (aVar3 == null) {
                                                f12 = f15;
                                            } else {
                                                aVar = aVar3;
                                                f14 = f15;
                                            }
                                            f15 = ((f12 - f14) / 2.0f) + f14;
                                            f11 = f5;
                                            depth2 = i5;
                                            fMin = f;
                                        } else {
                                            if (aVar3 != null) {
                                                iE = aVar3.c(sVar);
                                                break;
                                            }
                                            f15 = ((f12 - f14) / 2.0f) + f14;
                                            f11 = f5;
                                            depth2 = i5;
                                            fMin = f;
                                            z7 = false;
                                        }
                                        int[] iArr7 = iArr;
                                        f10 = f6;
                                        iArrTrimStateSet = iArr7;
                                    } else {
                                        iArr = iArrTrimStateSet;
                                        i5 = depth2;
                                        z4 = true;
                                        iE = aVar == null ? b.e(f9) : aVar.c(sVar);
                                    }
                                }
                            }
                            color = iE;
                        } else {
                            iArr = iArrTrimStateSet;
                            i5 = depth2;
                            z4 = true;
                        }
                        color = (16777215 & color) | (iN << 24);
                    } else {
                        iArr = iArrTrimStateSet;
                        i5 = depth2;
                        z4 = true;
                    }
                    int i12 = i7 + 1;
                    if (i12 > iArr3.length) {
                        int[] iArr8 = new int[i7 <= 4 ? 8 : i7 * 2];
                        System.arraycopy(iArr3, 0, iArr8, 0, i7);
                        iArr3 = iArr8;
                    }
                    iArr3[i7] = color;
                    if (i12 > iArr2.length) {
                        ?? r12 = (Object[]) Array.newInstance(iArr2.getClass().getComponentType(), i7 > 4 ? i7 * 2 : 8);
                        System.arraycopy(iArr2, 0, r12, 0, i7);
                        iArr2 = r12;
                    }
                    iArr2[i7] = iArr;
                    iArr2 = iArr2;
                    attributeSet2 = attributeSet;
                    theme2 = theme;
                    i7 = i12;
                    z5 = z4;
                    depth2 = i5;
                    i6 = 0;
                    r0 = resources;
                }
            } else {
                r0 = resources;
                attributeSet2 = attributeSet;
                theme2 = theme;
                z5 = z5;
                depth2 = depth2;
                i6 = 0;
            }
        }
        int[] iArr9 = new int[i7];
        int[][] iArr10 = new int[i7][];
        System.arraycopy(iArr3, 0, iArr9, 0, i7);
        System.arraycopy(iArr2, 0, iArr10, 0, i7);
        return new ColorStateList(iArr10, iArr9);
    }
}
