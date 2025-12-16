package P3;

import O3.i;
import O3.j;
import R2.k;
import R2.m;
import R2.n;
import R2.o;
import R2.w;
import R2.x;
import R2.y;
import R2.z;
import R3.AbstractC0083e;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class g implements N3.f {
    public static final List f;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f2163c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f2164d;

    /* renamed from: e, reason: collision with root package name */
    public final List f2165e;

    static {
        String strS0 = m.S0(n.y0('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);
        List listY0 = n.y0(strS0.concat("/Any"), strS0.concat("/Nothing"), strS0.concat("/Unit"), strS0.concat("/Throwable"), strS0.concat("/Number"), strS0.concat("/Byte"), strS0.concat("/Double"), strS0.concat("/Float"), strS0.concat("/Int"), strS0.concat("/Long"), strS0.concat("/Short"), strS0.concat("/Boolean"), strS0.concat("/Char"), strS0.concat("/CharSequence"), strS0.concat("/String"), strS0.concat("/Comparable"), strS0.concat("/Enum"), strS0.concat("/Array"), strS0.concat("/ByteArray"), strS0.concat("/DoubleArray"), strS0.concat("/FloatArray"), strS0.concat("/IntArray"), strS0.concat("/LongArray"), strS0.concat("/ShortArray"), strS0.concat("/BooleanArray"), strS0.concat("/CharArray"), strS0.concat("/Cloneable"), strS0.concat("/Annotation"), strS0.concat("/collections/Iterable"), strS0.concat("/collections/MutableIterable"), strS0.concat("/collections/Collection"), strS0.concat("/collections/MutableCollection"), strS0.concat("/collections/List"), strS0.concat("/collections/MutableList"), strS0.concat("/collections/Set"), strS0.concat("/collections/MutableSet"), strS0.concat("/collections/Map"), strS0.concat("/collections/MutableMap"), strS0.concat("/collections/Map.Entry"), strS0.concat("/collections/MutableMap.MutableEntry"), strS0.concat("/collections/Iterator"), strS0.concat("/collections/MutableIterator"), strS0.concat("/collections/ListIterator"), strS0.concat("/collections/MutableListIterator"));
        f = listY0;
        k kVarK1 = m.k1(listY0);
        int iY1 = z.y1(o.C0(kVarK1));
        if (iY1 < 16) {
            iY1 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
        Iterator it = kVarK1.iterator();
        while (true) {
            y yVar = (y) it;
            if (!yVar.f2331d.hasNext()) {
                return;
            }
            x xVar = (x) yVar.next();
            linkedHashMap.put((String) xVar.f2329b, Integer.valueOf(xVar.f2328a));
        }
    }

    public g(j jVar, String[] strArr) {
        List list = jVar.f2013e;
        Set setJ1 = list.isEmpty() ? w.f2327c : m.j1(list);
        List<i> list2 = jVar.f2012d;
        d3.i.d("types.recordList", list2);
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(list2.size());
        for (i iVar : list2) {
            int i5 = iVar.f2001e;
            for (int i6 = 0; i6 < i5; i6++) {
                arrayList.add(iVar);
            }
        }
        arrayList.trimToSize();
        this.f2163c = strArr;
        this.f2164d = setJ1;
        this.f2165e = arrayList;
    }

    @Override // N3.f
    public final boolean N(int i5) {
        return this.f2164d.contains(Integer.valueOf(i5));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    @Override // N3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String r(int i5) {
        String strQ;
        i iVar = (i) this.f2165e.get(i5);
        int i6 = iVar.f2000d;
        if ((i6 & 4) == 4) {
            Object obj = iVar.f2002g;
            if (obj instanceof String) {
                strQ = (String) obj;
            } else {
                AbstractC0083e abstractC0083e = (AbstractC0083e) obj;
                String strX = abstractC0083e.x();
                if (abstractC0083e.r()) {
                    iVar.f2002g = strX;
                }
                strQ = strX;
            }
        } else if ((i6 & 2) == 2) {
            List list = f;
            int size = list.size();
            int i7 = iVar.f;
            strQ = (i7 < 0 || i7 >= size) ? this.f2163c[i5] : (String) list.get(i7);
        }
        if (iVar.f2004i.size() >= 2) {
            List list2 = iVar.f2004i;
            d3.i.d("substringIndexList", list2);
            Integer num = (Integer) list2.get(0);
            Integer num2 = (Integer) list2.get(1);
            d3.i.d("begin", num);
            if (num.intValue() >= 0) {
                int iIntValue = num.intValue();
                d3.i.d(NetworkAnalyticsConstants.DataPoints.CLOSE_TIME, num2);
                if (iIntValue <= num2.intValue() && num2.intValue() <= strQ.length()) {
                    strQ = strQ.substring(num.intValue(), num2.intValue());
                    d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", strQ);
                }
            }
        }
        if (iVar.f2006k.size() >= 2) {
            List list3 = iVar.f2006k;
            d3.i.d("replaceCharList", list3);
            Integer num3 = (Integer) list3.get(0);
            Integer num4 = (Integer) list3.get(1);
            d3.i.d("string", strQ);
            strQ = s4.h.q(strQ, (char) num3.intValue(), (char) num4.intValue());
        }
        O3.h hVar = iVar.f2003h;
        if (hVar == null) {
            hVar = O3.h.NONE;
        }
        int iOrdinal = hVar.ordinal();
        if (iOrdinal == 1) {
            d3.i.d("string", strQ);
            strQ = s4.h.q(strQ, '$', '.');
        } else if (iOrdinal == 2) {
            if (strQ.length() >= 2) {
                strQ = strQ.substring(1, strQ.length() - 1);
                d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", strQ);
            }
            strQ = s4.h.q(strQ, '$', '.');
        }
        d3.i.d("string", strQ);
        return strQ;
    }

    @Override // N3.f
    public final String x0(int i5) {
        return r(i5);
    }
}
