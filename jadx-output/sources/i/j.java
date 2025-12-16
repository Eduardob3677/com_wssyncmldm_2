package i;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import c.AbstractC0206a;
import j.ActionProviderVisibilityListenerC0511l;
import j.MenuC0508i;
import java.io.IOException;
import k.AbstractC0591g0;
import org.xmlpull.v1.XmlPullParserException;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public final class j extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f7129e;
    public static final Class[] f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f7130a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f7131b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7132c;

    /* renamed from: d, reason: collision with root package name */
    public Object f7133d;

    static {
        Class[] clsArr = {Context.class};
        f7129e = clsArr;
        f = clsArr;
    }

    public j(Context context) {
        super(context);
        this.f7132c = context;
        Object[] objArr = {context};
        this.f7130a = objArr;
        this.f7131b = objArr;
    }

    public static Object a(Context context) {
        return (!(context instanceof Activity) && (context instanceof ContextWrapper)) ? a(((ContextWrapper) context).getBaseContext()) : context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v60 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        ?? r42;
        int i5;
        boolean z4;
        ColorStateList colorStateList;
        int resourceId;
        i iVar = new i(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            r42 = 1;
            i5 = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z5 = false;
        boolean z6 = false;
        String str = null;
        while (!z5) {
            if (eventType == r42) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i5) {
                if (eventType != 3) {
                    z4 = r42;
                } else {
                    String name2 = xmlResourceParser.getName();
                    if (z6 && name2.equals(str)) {
                        z4 = r42;
                        z6 = false;
                        str = null;
                    } else {
                        if (name2.equals("group")) {
                            iVar.f7106b = 0;
                            iVar.f7107c = 0;
                            iVar.f7108d = 0;
                            iVar.f7109e = 0;
                            iVar.f = r42;
                            iVar.f7110g = r42;
                        } else if (name2.equals("item")) {
                            if (!iVar.f7111h) {
                                ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = iVar.f7128z;
                                if (actionProviderVisibilityListenerC0511l == null || !actionProviderVisibilityListenerC0511l.f7281a.hasSubMenu()) {
                                    iVar.f7111h = r42;
                                    iVar.b(iVar.f7105a.add(iVar.f7106b, iVar.f7112i, iVar.f7113j, iVar.f7114k));
                                } else {
                                    iVar.f7111h = r42;
                                    iVar.b(iVar.f7105a.addSubMenu(iVar.f7106b, iVar.f7112i, iVar.f7113j, iVar.f7114k).getItem());
                                }
                            }
                        } else if (name2.equals("menu")) {
                            z4 = r42;
                            z5 = z4;
                        }
                        z4 = r42;
                    }
                }
                eventType = xmlResourceParser.next();
                r42 = z4;
                i5 = 2;
                z6 = z6;
            } else {
                if (!z6) {
                    String name3 = xmlResourceParser.getName();
                    boolean zEquals = name3.equals("group");
                    j jVar = iVar.E;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = jVar.f7132c.obtainStyledAttributes(attributeSet, AbstractC0206a.f5174p);
                        iVar.f7106b = typedArrayObtainStyledAttributes.getResourceId(r42, 0);
                        iVar.f7107c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        iVar.f7108d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        iVar.f7109e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        iVar.f = typedArrayObtainStyledAttributes.getBoolean(2, r42);
                        iVar.f7110g = typedArrayObtainStyledAttributes.getBoolean(0, r42);
                        typedArrayObtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            Context context = jVar.f7132c;
                            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5175q);
                            iVar.f7112i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                            iVar.f7113j = (typedArrayObtainStyledAttributes2.getInt(5, iVar.f7107c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, iVar.f7108d) & 65535);
                            iVar.f7114k = typedArrayObtainStyledAttributes2.getText(7);
                            iVar.f7115l = typedArrayObtainStyledAttributes2.getText(8);
                            iVar.f7116m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                            String string = typedArrayObtainStyledAttributes2.getString(9);
                            iVar.n = string == null ? (char) 0 : string.charAt(0);
                            iVar.f7117o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                            String string2 = typedArrayObtainStyledAttributes2.getString(10);
                            iVar.f7118p = string2 == null ? (char) 0 : string2.charAt(0);
                            iVar.f7119q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                            if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                                iVar.f7120r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                iVar.f7120r = iVar.f7109e;
                            }
                            iVar.f7121s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                            iVar.f7122t = typedArrayObtainStyledAttributes2.getBoolean(4, iVar.f);
                            iVar.f7123u = typedArrayObtainStyledAttributes2.getBoolean(1, iVar.f7110g);
                            iVar.f7124v = typedArrayObtainStyledAttributes2.getInt(22, -1);
                            iVar.f7127y = typedArrayObtainStyledAttributes2.getString(12);
                            iVar.f7125w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                            iVar.f7126x = typedArrayObtainStyledAttributes2.getString(15);
                            String string3 = typedArrayObtainStyledAttributes2.getString(14);
                            boolean z7 = string3 != null;
                            if (z7 && iVar.f7125w == 0 && iVar.f7126x == null) {
                                iVar.f7128z = (ActionProviderVisibilityListenerC0511l) iVar.a(string3, f, jVar.f7131b);
                            } else {
                                if (z7) {
                                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                }
                                iVar.f7128z = null;
                            }
                            iVar.f7101A = typedArrayObtainStyledAttributes2.getText(17);
                            iVar.f7102B = typedArrayObtainStyledAttributes2.getText(23);
                            if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                                iVar.f7104D = AbstractC0591g0.b(typedArrayObtainStyledAttributes2.getInt(19, -1), iVar.f7104D);
                            } else {
                                iVar.f7104D = null;
                            }
                            if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                                if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = AbstractC0936d.b(context, resourceId)) == null) {
                                    colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                                }
                                iVar.f7103C = colorStateList;
                            } else {
                                iVar.f7103C = null;
                            }
                            typedArrayObtainStyledAttributes2.getInt(21, 0);
                            typedArrayObtainStyledAttributes2.recycle();
                            iVar.f7111h = false;
                            z4 = true;
                        } else if (name3.equals("menu")) {
                            z4 = true;
                            iVar.f7111h = true;
                            SubMenu subMenuAddSubMenu = iVar.f7105a.addSubMenu(iVar.f7106b, iVar.f7112i, iVar.f7113j, iVar.f7114k);
                            iVar.b(subMenuAddSubMenu.getItem());
                            b(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                        } else {
                            z4 = true;
                            str = name3;
                            z6 = true;
                        }
                        eventType = xmlResourceParser.next();
                        r42 = z4;
                        i5 = 2;
                        z6 = z6;
                    }
                }
                z4 = r42;
            }
            eventType = xmlResourceParser.next();
            r42 = z4;
            i5 = 2;
            z6 = z6;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i5, Menu menu) {
        if (!(menu instanceof MenuC0508i)) {
            super.inflate(i5, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f7132c.getResources().getLayout(i5);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e5) {
                    throw new InflateException("Error inflating menu XML", e5);
                }
            } catch (XmlPullParserException e6) {
                throw new InflateException("Error inflating menu XML", e6);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
