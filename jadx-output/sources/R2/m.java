package R2;

import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import h3.C0447c;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import p0.AbstractC0740b;

/* loaded from: classes.dex */
public abstract class m extends s {
    public static final int F0(int i5, List list) {
        if (new C0447c(0, n.x0(list), 1).l(i5)) {
            return n.x0(list) - i5;
        }
        throw new IndexOutOfBoundsException("Element index " + i5 + " must be in range [" + new C0447c(0, n.x0(list), 1) + "].");
    }

    public static l G0(Iterable iterable) {
        d3.i.e("<this>", iterable);
        return new l(1, iterable);
    }

    public static boolean H0(Collection collection, Object obj) {
        d3.i.e("<this>", collection);
        return collection.contains(obj);
    }

    public static List I0(List list) {
        d3.i.e("<this>", list);
        int size = list.size() - 1;
        if (size <= 0) {
            return u.f2325c;
        }
        if (size == 1) {
            return AbstractC0420a.V(T0(list));
        }
        ArrayList arrayList = new ArrayList(size);
        if (list instanceof RandomAccess) {
            int size2 = list.size();
            for (int i5 = 1; i5 < size2; i5++) {
                arrayList.add(list.get(i5));
            }
        } else {
            ListIterator listIterator = list.listIterator(1);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static List J0(List list) {
        d3.i.e("<this>", list);
        int size = list.size() - 1;
        int i5 = 0;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(("Requested element count " + size + " is less than zero.").toString());
        }
        if (size == 0) {
            return u.f2325c;
        }
        if (size >= list.size()) {
            return g1(list);
        }
        if (size == 1) {
            return AbstractC0420a.V(L0(list));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
            i5++;
            if (i5 == size) {
                break;
            }
        }
        return n.A0(arrayList);
    }

    public static ArrayList K0(Iterable iterable, InterfaceC0222b interfaceC0222b) {
        d3.i.e("<this>", iterable);
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (((Boolean) interfaceC0222b.e(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object L0(Iterable iterable) {
        d3.i.e("<this>", iterable);
        if (iterable instanceof List) {
            return M0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object M0(List list) {
        d3.i.e("<this>", list);
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object N0(Iterable iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object O0(List list) {
        d3.i.e("<this>", list);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object P0(int i5, List list) {
        d3.i.e("<this>", list);
        if (i5 < 0 || i5 > n.x0(list)) {
            return null;
        }
        return list.get(i5);
    }

    public static final void Q0(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i5, CharSequence charSequence4, InterfaceC0222b interfaceC0222b) throws IOException {
        d3.i.e("<this>", iterable);
        d3.i.e("buffer", appendable);
        d3.i.e("separator", charSequence);
        d3.i.e("prefix", charSequence2);
        d3.i.e("postfix", charSequence3);
        d3.i.e("truncated", charSequence4);
        appendable.append(charSequence2);
        int i6 = 0;
        for (Object obj : iterable) {
            i6++;
            if (i6 > 1) {
                appendable.append(charSequence);
            }
            if (i5 >= 0 && i6 > i5) {
                break;
            } else {
                AbstractC0740b.a(appendable, obj, interfaceC0222b);
            }
        }
        if (i5 >= 0 && i6 > i5) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
    }

    public static /* synthetic */ void R0(Iterable iterable, Appendable appendable, String str, String str2, InterfaceC0222b interfaceC0222b, int i5) throws IOException {
        String str3 = (i5 & 4) != 0 ? "" : str;
        String str4 = (i5 & 8) != 0 ? "" : str2;
        if ((i5 & 64) != 0) {
            interfaceC0222b = null;
        }
        Q0(iterable, appendable, ", ", str3, str4, -1, "...", interfaceC0222b);
    }

    public static String S0(Iterable iterable, String str, String str2, String str3, InterfaceC0222b interfaceC0222b, int i5) {
        if ((i5 & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i5 & 2) != 0 ? "" : str2;
        String str6 = (i5 & 4) != 0 ? "" : str3;
        if ((i5 & 32) != 0) {
            interfaceC0222b = null;
        }
        d3.i.e("<this>", iterable);
        d3.i.e("separator", str4);
        d3.i.e("prefix", str5);
        d3.i.e("postfix", str6);
        StringBuilder sb = new StringBuilder();
        Q0(iterable, sb, str4, str5, str6, -1, "...", interfaceC0222b);
        String string = sb.toString();
        d3.i.d("joinTo(StringBuilder(), …ed, transform).toString()", string);
        return string;
    }

    public static Object T0(Collection collection) {
        d3.i.e("<this>", collection);
        if (collection instanceof List) {
            return U0((List) collection);
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object U0(List list) {
        d3.i.e("<this>", list);
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(n.x0(list));
    }

    public static Object V0(List list) {
        d3.i.e("<this>", list);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static ArrayList W0(Iterable iterable, Iterable iterable2) {
        d3.i.e("<this>", iterable);
        if (iterable instanceof Collection) {
            return Y0((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        s.E0(arrayList, iterable);
        s.E0(arrayList, iterable2);
        return arrayList;
    }

    public static ArrayList X0(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            return Z0((Collection) iterable, obj);
        }
        ArrayList arrayList = new ArrayList();
        s.E0(arrayList, iterable);
        arrayList.add(obj);
        return arrayList;
    }

    public static ArrayList Y0(Collection collection, Iterable iterable) {
        d3.i.e("<this>", collection);
        d3.i.e("elements", iterable);
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            s.E0(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static ArrayList Z0(Collection collection, Object obj) {
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static Object a1(Collection collection) {
        d3.i.e("<this>", collection);
        if (collection instanceof List) {
            return b1((List) collection);
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static Object b1(List list) {
        d3.i.e("<this>", list);
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static Object c1(Collection collection) {
        d3.i.e("<this>", collection);
        if (collection instanceof List) {
            List list = (List) collection;
            if (list.size() == 1) {
                return list.get(0);
            }
            return null;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static Object d1(List list) {
        d3.i.e("<this>", list);
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List e1(AbstractCollection abstractCollection, Comparator comparator) {
        d3.i.e("<this>", abstractCollection);
        if (abstractCollection.size() <= 1) {
            return g1(abstractCollection);
        }
        Object[] array = abstractCollection.toArray(new Object[0]);
        d3.i.e("<this>", array);
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return i.g0(array);
    }

    public static final void f1(Iterable iterable, AbstractCollection abstractCollection) {
        d3.i.e("<this>", iterable);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List g1(Iterable iterable) {
        ArrayList arrayListH1;
        d3.i.e("<this>", iterable);
        boolean z4 = iterable instanceof Collection;
        if (!z4) {
            if (z4) {
                arrayListH1 = h1((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                f1(iterable, arrayList);
                arrayListH1 = arrayList;
            }
            return n.A0(arrayListH1);
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return u.f2325c;
        }
        if (size != 1) {
            return h1(collection);
        }
        return AbstractC0420a.V(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static ArrayList h1(Collection collection) {
        d3.i.e("<this>", collection);
        return new ArrayList(collection);
    }

    public static Set i1(Iterable iterable) {
        d3.i.e("<this>", iterable);
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        f1(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set j1(Iterable iterable) {
        d3.i.e("<this>", iterable);
        boolean z4 = iterable instanceof Collection;
        w wVar = w.f2327c;
        if (!z4) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            f1(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            return size != 0 ? size != 1 ? linkedHashSet : L2.b.I(linkedHashSet.iterator().next()) : wVar;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return wVar;
        }
        if (size2 == 1) {
            return L2.b.I(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(z.y1(collection.size()));
        f1(iterable, linkedHashSet2);
        return linkedHashSet2;
    }

    public static k k1(List list) {
        d3.i.e("<this>", list);
        return new k(1, new B3.k(4, list));
    }

    public static ArrayList l1(List list, Iterable iterable) {
        d3.i.e("<this>", list);
        d3.i.e("other", iterable);
        Iterator it = list.iterator();
        Iterator it2 = iterable.iterator();
        ArrayList arrayList = new ArrayList(Math.min(o.C0(list), o.C0(iterable)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new Q2.e(it.next(), it2.next()));
        }
        return arrayList;
    }
}
