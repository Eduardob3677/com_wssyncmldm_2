package A;

import J.N;
import J.Q;
import J.r0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.widget.ImageView;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.WeakHashMap;
import k.AbstractC0591g0;
import k.C0622s;
import k.x1;
import org.xmlpull.v1.XmlPullParserException;
import x.AbstractC0903a;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public int f10a;

    /* renamed from: b, reason: collision with root package name */
    public Object f11b;

    /* renamed from: c, reason: collision with root package name */
    public Object f12c;

    public d(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            sb.append(']');
            sb.append(' ');
            string = sb.toString();
        }
        this.f12c = string;
        this.f11b = str;
        boolean z4 = str.length() <= 23;
        Object[] objArr = {str, 23};
        if (!z4) {
            throw new IllegalArgumentException(String.format("tag \"%s\" is longer than the %d character maximum", objArr));
        }
        int i5 = 2;
        while (7 >= i5 && !Log.isLoggable((String) this.f11b, i5)) {
            i5++;
        }
        this.f10a = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f1, code lost:
    
        if (r7 == 1) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f3, code lost:
    
        if (r7 == 2) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f5, code lost:
    
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f7, code lost:
    
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
    
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01fd, code lost:
    
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0200, code lost:
    
        r1 = 0;
        r3 = new android.graphics.LinearGradient(r11, r27, r26, r25, r0.f23a, r0.f24b, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0212, code lost:
    
        r1 = 0;
        r3 = new android.graphics.SweepGradient(r22, r23, r0.f23a, r0.f24b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0221, code lost:
    
        r8 = r22;
        r15 = r23;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0229, code lost:
    
        if (r24 <= 0.0f) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x022e, code lost:
    
        if (r7 == 1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0231, code lost:
    
        if (r7 == 2) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0233, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0238, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x023b, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023e, code lost:
    
        r3 = new android.graphics.RadialGradient(r8, r15, r24, r0.f23a, r0.f24b, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0257, code lost:
    
        return new A.d(r3, null, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01cf, code lost:
    
        if (r14.size() <= 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01d1, code lost:
    
        r0 = new A.j(r14, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d7, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        if (r0 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01dc, code lost:
    
        if (r19 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01de, code lost:
    
        r0 = new A.j(r5, r8, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e4, code lost:
    
        r0 = new A.j(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ea, code lost:
    
        if (r9 == 1) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ed, code lost:
    
        if (r9 == 2) goto L107;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d c(Resources resources, int i5, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        float f;
        int i6;
        float f5;
        float f6;
        float f7;
        XmlResourceParser xml = resources.getXml(i5);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        name.getClass();
        if (!name.equals("gradient")) {
            if (name.equals("selector")) {
                ColorStateList colorStateListB = c.b(resources, xml, attributeSetAsAttributeSet, theme);
                return new d(null, colorStateListB, colorStateListB.getDefaultColor());
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        String name2 = xml.getName();
        if (!name2.equals("gradient")) {
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        TypedArray typedArrayG = b.g(resources, theme, attributeSetAsAttributeSet, AbstractC0903a.f9619d);
        float f8 = !b.d(xml, "startX") ? 0.0f : typedArrayG.getFloat(8, 0.0f);
        float f9 = !b.d(xml, "startY") ? 0.0f : typedArrayG.getFloat(9, 0.0f);
        float f10 = !b.d(xml, "endX") ? 0.0f : typedArrayG.getFloat(10, 0.0f);
        float f11 = !b.d(xml, "endY") ? 0.0f : typedArrayG.getFloat(11, 0.0f);
        float f12 = !b.d(xml, "centerX") ? 0.0f : typedArrayG.getFloat(3, 0.0f);
        float f13 = !b.d(xml, "centerY") ? 0.0f : typedArrayG.getFloat(4, 0.0f);
        int i7 = !b.d(xml, "type") ? 0 : typedArrayG.getInt(2, 0);
        int color = !b.d(xml, "startColor") ? 0 : typedArrayG.getColor(0, 0);
        boolean zD = b.d(xml, "centerColor");
        int color2 = !b.d(xml, "centerColor") ? 0 : typedArrayG.getColor(7, 0);
        int color3 = !b.d(xml, "endColor") ? 0 : typedArrayG.getColor(1, 0);
        if (b.d(xml, "tileMode")) {
            f = f12;
            i6 = typedArrayG.getInt(6, 0);
        } else {
            f = f12;
            i6 = 0;
        }
        if (b.d(xml, "gradientRadius")) {
            f5 = f13;
            f6 = typedArrayG.getFloat(5, 0.0f);
        } else {
            f5 = f13;
            f6 = 0.0f;
        }
        typedArrayG.recycle();
        int depth = xml.getDepth() + 1;
        float f14 = f6;
        ArrayList arrayList = new ArrayList(20);
        float f15 = f11;
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next2 = xml.next();
            float f16 = f10;
            if (next2 == 1) {
                f7 = f9;
                break;
            }
            int depth2 = xml.getDepth();
            f7 = f9;
            if (depth2 < depth && next2 == 3) {
                break;
            }
            if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                TypedArray typedArrayG2 = b.g(resources, theme, attributeSetAsAttributeSet, AbstractC0903a.f9620e);
                boolean zHasValue = typedArrayG2.hasValue(0);
                boolean zHasValue2 = typedArrayG2.hasValue(1);
                if (!zHasValue || !zHasValue2) {
                    break;
                }
                int color4 = typedArrayG2.getColor(0, 0);
                float f17 = typedArrayG2.getFloat(1, 0.0f);
                typedArrayG2.recycle();
                arrayList2.add(Integer.valueOf(color4));
                arrayList.add(Float.valueOf(f17));
            }
            f10 = f16;
            f9 = f7;
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    public void a() {
        x1 x1Var;
        ImageView imageView = (ImageView) this.f11b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            Rect rect = AbstractC0591g0.f7856a;
        }
        if (drawable == null || (x1Var = (x1) this.f12c) == null) {
            return;
        }
        C0622s.d(drawable, x1Var, imageView.getDrawableState());
    }

    public n2.b b() {
        String str = ((Long) this.f12c) == null ? " tokenExpirationTimestamp" : "";
        if (str.isEmpty()) {
            return new n2.b(((Long) this.f12c).longValue(), this.f10a, (String) this.f11b);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public void d(String str, Exception exc, Object... objArr) {
        Log.e((String) this.f11b, f(str, objArr), exc);
    }

    public void e(String str, Object... objArr) {
        Log.e((String) this.f11b, f(str, objArr));
    }

    public String f(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return ((String) this.f12c).concat(str);
    }

    public boolean g() {
        ColorStateList colorStateList;
        return ((Shader) this.f11b) == null && (colorStateList = (ColorStateList) this.f12c) != null && colorStateList.isStateful();
    }

    public void h(AttributeSet attributeSet, int i5) {
        int resourceId;
        ImageView imageView = (ImageView) this.f11b;
        Context context = imageView.getContext();
        int[] iArr = AbstractC0206a.f;
        r0 r0VarM = r0.m(context, attributeSet, iArr, i5, 0);
        Context context2 = imageView.getContext();
        WeakHashMap weakHashMap = Q.f940a;
        N.d(imageView, context2, iArr, attributeSet, (TypedArray) r0VarM.f1007d, i5, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) r0VarM.f1007d;
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = AbstractC0420a.A(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                Rect rect = AbstractC0591g0.f7856a;
            }
            if (typedArray.hasValue(2)) {
                O.f.c(imageView, r0VarM.f(2));
            }
            if (typedArray.hasValue(3)) {
                O.f.d(imageView, AbstractC0591g0.b(typedArray.getInt(3, -1), null));
            }
            r0VarM.n();
        } catch (Throwable th) {
            r0VarM.n();
            throw th;
        }
    }

    public void i(String str, Object... objArr) {
        if (this.f10a <= 2) {
            Log.v((String) this.f11b, f(str, objArr));
        }
    }

    public d(ImageView imageView) {
        this.f10a = 0;
        this.f11b = imageView;
    }

    public d(Shader shader, ColorStateList colorStateList, int i5) {
        this.f11b = shader;
        this.f12c = colorStateList;
        this.f10a = i5;
    }
}
