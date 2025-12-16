package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import com.idm.providers.mo.IDMMoInterface;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class E {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f4576e = {Context.class, AttributeSet.class};
    public static final HashMap f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f4577a;

    /* renamed from: c, reason: collision with root package name */
    public final F f4579c;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4578b = new Object[2];

    /* renamed from: d, reason: collision with root package name */
    public final String[] f4580d = {Preference.class.getPackage().getName() + IDMMoInterface.IDM_MO_ROOT_PATH, SwitchPreference.class.getPackage().getName() + IDMMoInterface.IDM_MO_ROOT_PATH};

    public E(Context context, F f5) {
        this.f4577a = context;
        this.f4579c = f5;
    }

    public final Preference a(String str, String[] strArr, AttributeSet attributeSet) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Class<?> cls;
        HashMap map = f;
        Constructor<?> constructor = (Constructor) map.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f4577a.getClassLoader();
                    if (strArr == null || strArr.length == 0) {
                        cls = Class.forName(str, false, classLoader);
                    } else {
                        cls = null;
                        ClassNotFoundException e5 = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e6) {
                                e5 = e6;
                            }
                        }
                        if (cls == null) {
                            if (e5 != null) {
                                throw e5;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                    }
                    constructor = cls.getConstructor(f4576e);
                    constructor.setAccessible(true);
                    map.put(str, constructor);
                } catch (Exception e7) {
                    InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                    inflateException.initCause(e7);
                    throw inflateException;
                }
            } catch (ClassNotFoundException e8) {
                throw e8;
            }
        }
        Object[] objArr = this.f4578b;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    public final Preference b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? a(str, this.f4580d, attributeSet) : a(str, null, attributeSet);
        } catch (InflateException e5) {
            throw e5;
        } catch (ClassNotFoundException e6) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e6);
            throw inflateException;
        } catch (Exception e7) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e7);
            throw inflateException2;
        }
    }

    public final PreferenceGroup c(XmlResourceParser xmlResourceParser, PreferenceGroup preferenceGroup) {
        int next;
        synchronized (this.f4578b) {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            this.f4578b[0] = this.f4577a;
            do {
                try {
                    try {
                        try {
                            next = xmlResourceParser.next();
                            if (next == 2) {
                                break;
                            }
                        } catch (IOException e5) {
                            InflateException inflateException = new InflateException(xmlResourceParser.getPositionDescription() + ": " + e5.getMessage());
                            inflateException.initCause(e5);
                            throw inflateException;
                        }
                    } catch (InflateException e6) {
                        throw e6;
                    }
                } catch (XmlPullParserException e7) {
                    InflateException inflateException2 = new InflateException(e7.getMessage());
                    inflateException2.initCause(e7);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlResourceParser.getPositionDescription() + ": No start tag found!");
            }
            PreferenceGroup preferenceGroup2 = (PreferenceGroup) b(xmlResourceParser.getName(), attributeSetAsAttributeSet);
            if (preferenceGroup == null) {
                preferenceGroup2.m(this.f4579c);
                preferenceGroup = preferenceGroup2;
            }
            d(xmlResourceParser, preferenceGroup, attributeSetAsAttributeSet);
        }
        return preferenceGroup;
    }

    public final void d(XmlResourceParser xmlResourceParser, Preference preference, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if ((next == 3 && xmlResourceParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlResourceParser.getName();
                boolean zEquals = "intent".equals(name);
                Context context = this.f4577a;
                if (zEquals) {
                    try {
                        preference.f4658o = Intent.parseIntent(context.getResources(), xmlResourceParser, attributeSet);
                    } catch (IOException e5) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e5);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    Resources resources = context.getResources();
                    if (preference.f4660q == null) {
                        preference.f4660q = new Bundle();
                    }
                    resources.parseBundleExtra("extra", attributeSet, preference.f4660q);
                    try {
                        int depth2 = xmlResourceParser.getDepth();
                        while (true) {
                            int next2 = xmlResourceParser.next();
                            if (next2 == 1 || (next2 == 3 && xmlResourceParser.getDepth() <= depth2)) {
                                break;
                            }
                        }
                    } catch (IOException e6) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e6);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference preferenceB = b(name, attributeSet);
                    ((PreferenceGroup) preference).D(preferenceB);
                    d(xmlResourceParser, preferenceB, attributeSet);
                }
            }
        }
    }
}
