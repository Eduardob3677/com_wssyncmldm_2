package D3;

import A3.C0005d;
import E3.I;
import J.Q;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.k;
import d3.i;
import g4.j;
import g4.l;
import h0.AbstractC0432c;
import j0.C0531c;
import j0.C0552y;
import j0.K;
import j0.b0;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.WeakHashMap;
import o.C0723l;
import r3.InterfaceC0789Q;
import r3.InterfaceC0807j;
import v0.AbstractC0892a;
import x3.C0911C;
import z0.C0940b;

/* loaded from: classes.dex */
public final class f implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f503a;

    /* renamed from: b, reason: collision with root package name */
    public int f504b;

    /* renamed from: c, reason: collision with root package name */
    public Object f505c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f506d;

    /* renamed from: e, reason: collision with root package name */
    public final Serializable f507e;
    public Object f;

    public f(e eVar, InterfaceC0807j interfaceC0807j, H3.e eVar2, int i5) {
        this.f503a = 0;
        i.e("c", eVar);
        i.e("containingDeclaration", interfaceC0807j);
        i.e("typeParameterOwner", eVar2);
        this.f505c = eVar;
        this.f506d = interfaceC0807j;
        this.f504b = i5;
        ArrayList arrayListU = eVar2.u();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayListU.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(i6));
            i6++;
        }
        this.f507e = linkedHashMap;
        this.f = ((l) ((a) ((e) this.f505c).f499d).f469a).c(new C0005d(3, this));
    }

    public static void d(String str) {
        if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(str));
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e5) {
            Log.w("SupportSQLite", "delete failed: ", e5);
        }
    }

    @Override // D3.g
    public InterfaceC0789Q a(C0911C c0911c) {
        i.e("javaTypeParameter", c0911c);
        I i5 = (I) ((j) this.f).e(c0911c);
        return i5 != null ? i5 : ((g) ((e) this.f505c).f500e).a(c0911c);
    }

    public void b(View view, int i5, boolean z4) {
        C0552y c0552y = (C0552y) this.f505c;
        int childCount = i5 < 0 ? c0552y.f7599a.getChildCount() : h(i5);
        ((C0531c) this.f506d).e(childCount, z4);
        if (z4) {
            k(view);
        }
        RecyclerView recyclerView = c0552y.f7599a;
        recyclerView.addView(view, childCount);
        RecyclerView.V(view);
        ArrayList arrayList = recyclerView.E;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((H0.g) recyclerView.E.get(size)).getClass();
                K k5 = (K) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) k5).width != -1 || ((ViewGroup.MarginLayoutParams) k5).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }
        }
    }

    public void c(View view, int i5, ViewGroup.LayoutParams layoutParams, boolean z4) {
        C0552y c0552y = (C0552y) this.f505c;
        int childCount = i5 < 0 ? c0552y.f7599a.getChildCount() : h(i5);
        ((C0531c) this.f506d).e(childCount, z4);
        if (z4) {
            k(view);
        }
        c0552y.getClass();
        b0 b0VarV = RecyclerView.V(view);
        RecyclerView recyclerView = c0552y.f7599a;
        if (b0VarV != null) {
            if (!b0VarV.l() && !b0VarV.q()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(b0VarV);
                throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb));
            }
            if (RecyclerView.f4771m2) {
                Log.d("SeslRecyclerView", "reAttach " + b0VarV);
            }
            b0VarV.f7414j &= -257;
        } else if (RecyclerView.f4770l2) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public void e(int i5) {
        int iH = h(i5);
        ((C0531c) this.f506d).f(iH);
        RecyclerView recyclerView = ((C0552y) this.f505c).f7599a;
        View childAt = recyclerView.getChildAt(iH);
        if (childAt != null) {
            b0 b0VarV = RecyclerView.V(childAt);
            if (b0VarV != null) {
                if (b0VarV.l() && !b0VarV.q()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(b0VarV);
                    throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb));
                }
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "tmpDetach " + b0VarV);
                }
                b0VarV.b(256);
            }
        } else if (RecyclerView.f4770l2) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(iH);
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(iH);
    }

    public View f(int i5) {
        return ((C0552y) this.f505c).f7599a.getChildAt(h(i5));
    }

    public int g() {
        return ((C0552y) this.f505c).f7599a.getChildCount() - ((ArrayList) this.f507e).size();
    }

    public int h(int i5) {
        if (i5 < 0) {
            return -1;
        }
        int childCount = ((C0552y) this.f505c).f7599a.getChildCount();
        int i6 = i5;
        while (i6 < childCount) {
            C0531c c0531c = (C0531c) this.f506d;
            int iB = i5 - (i6 - c0531c.b(i6));
            if (iB == 0) {
                while (c0531c.d(i6)) {
                    i6++;
                }
                return i6;
            }
            i6 += iB;
        }
        return -1;
    }

    public View i(int i5) {
        return ((C0552y) this.f505c).f7599a.getChildAt(i5);
    }

    public int j() {
        return ((C0552y) this.f505c).f7599a.getChildCount();
    }

    public void k(View view) {
        ((ArrayList) this.f507e).add(view);
        C0552y c0552y = (C0552y) this.f505c;
        c0552y.getClass();
        b0 b0VarV = RecyclerView.V(view);
        if (b0VarV != null) {
            int i5 = b0VarV.f7420q;
            View view2 = b0VarV.f7406a;
            if (i5 != -1) {
                b0VarV.f7419p = i5;
            } else {
                WeakHashMap weakHashMap = Q.f940a;
                b0VarV.f7419p = view2.getImportantForAccessibility();
            }
            RecyclerView recyclerView = c0552y.f7599a;
            if (recyclerView.a0()) {
                b0VarV.f7420q = 4;
                recyclerView.d2.add(b0VarV);
            } else {
                WeakHashMap weakHashMap2 = Q.f940a;
                view2.setImportantForAccessibility(4);
            }
        }
    }

    public boolean l(View view) {
        return ((ArrayList) this.f507e).contains(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x003f A[EDGE_INSN: B:54:0x003f->B:22:0x003f BREAK  A[LOOP:1: B:16:0x002d->B:57:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m(C0940b c0940b, int i5, int i6) {
        List listEmptyList;
        C0723l c0723l;
        int i7;
        int i8;
        boolean z4;
        androidx.room.a aVar = (androidx.room.a) this.f505c;
        if (aVar != null) {
            androidx.room.i iVar = aVar.f4936d;
            iVar.getClass();
            if (i5 == i6) {
                listEmptyList = Collections.emptyList();
            } else {
                boolean z5 = i6 > i5;
                ArrayList arrayList = new ArrayList();
                int i9 = z5 ? -1 : 1;
                int i10 = i5;
                do {
                    if (z5) {
                        if (i10 >= i6) {
                            listEmptyList = arrayList;
                            break;
                        }
                        c0723l = (C0723l) iVar.f4966a.c(null, i10);
                        if (c0723l != null) {
                            break;
                        }
                        int i11 = c0723l.f8443e;
                        if (z5) {
                            i8 = i11 - 1;
                            i7 = -1;
                        } else {
                            i7 = i11;
                            i8 = 0;
                        }
                        while (i8 != i7) {
                            int i12 = c0723l.f8441c[i8];
                            if (!z5) {
                                if (i12 >= i6 && i12 < i10) {
                                    arrayList.add(c0723l.f8442d[i8]);
                                    i10 = i12;
                                    z4 = true;
                                    break;
                                    break;
                                }
                                i8 += i9;
                            } else {
                                if (i12 <= i6 && i12 > i10) {
                                    arrayList.add(c0723l.f8442d[i8]);
                                    i10 = i12;
                                    z4 = true;
                                    break;
                                }
                                i8 += i9;
                            }
                        }
                        z4 = false;
                    } else {
                        if (i10 <= i6) {
                            listEmptyList = arrayList;
                            break;
                        }
                        c0723l = (C0723l) iVar.f4966a.c(null, i10);
                        if (c0723l != null) {
                        }
                    }
                } while (z4);
                listEmptyList = null;
            }
            if (listEmptyList != null) {
                Iterator it = listEmptyList.iterator();
                while (it.hasNext()) {
                    ((AbstractC0892a) it.next()).migrate(c0940b);
                }
                ((k) this.f506d).validateMigration(c0940b);
                o(c0940b);
                return;
            }
        }
        throw new IllegalStateException("A migration from " + i5 + " to " + i6 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public void n(View view) {
        if (((ArrayList) this.f507e).remove(view)) {
            C0552y c0552y = (C0552y) this.f505c;
            c0552y.getClass();
            b0 b0VarV = RecyclerView.V(view);
            if (b0VarV != null) {
                int i5 = b0VarV.f7419p;
                RecyclerView recyclerView = c0552y.f7599a;
                if (recyclerView.a0()) {
                    b0VarV.f7420q = i5;
                    recyclerView.d2.add(b0VarV);
                } else {
                    WeakHashMap weakHashMap = Q.f940a;
                    b0VarV.f7406a.setImportantForAccessibility(i5);
                }
                b0VarV.f7419p = 0;
            }
        }
    }

    public void o(C0940b c0940b) {
        c0940b.d("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        c0940b.d("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"" + ((String) this.f507e) + "\")");
    }

    public String toString() {
        switch (this.f503a) {
            case 2:
                return ((C0531c) this.f506d).toString() + ", hidden list:" + ((ArrayList) this.f507e).size();
            default:
                return super.toString();
        }
    }

    public f(androidx.room.a aVar, k kVar, String str, String str2) {
        this.f503a = 1;
        this.f504b = kVar.version;
        this.f505c = aVar;
        this.f506d = kVar;
        this.f507e = str;
        this.f = str2;
    }

    public f(C0552y c0552y) {
        this.f503a = 2;
        this.f504b = 0;
        this.f505c = c0552y;
        this.f506d = new C0531c();
        this.f507e = new ArrayList();
    }
}
