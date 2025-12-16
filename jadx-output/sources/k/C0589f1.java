package k;

import android.graphics.drawable.Drawable;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: k.f1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0589f1 extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f7851c;

    /* renamed from: d, reason: collision with root package name */
    public InterfaceC0580c1 f7852d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f7853e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public int f7854g;

    public final void a() {
        ArrayList arrayList = this.f7851c;
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            ((C0583d1) arrayList.get(i5)).a(i5 == this.f7854g);
            i5++;
        }
    }

    public final void b(int i5) {
        if (i5 >= 0) {
            ArrayList arrayList = this.f7851c;
            if (i5 >= arrayList.size()) {
                return;
            }
            removeView((C0583d1) arrayList.remove(i5));
            if (this.f7854g >= arrayList.size()) {
                setSelectedPosition(this.f7854g - 1);
            } else {
                a();
            }
        }
    }

    public final Drawable getDefaultCircle() {
        return this.f7853e;
    }

    public final Drawable getSelectCircle() {
        return this.f;
    }

    public final int getSelectedPosition() {
        return this.f7854g;
    }

    public final int getSize() {
        return this.f7851c.size();
    }

    public final void setDefaultCircle(Drawable drawable) {
        Iterator it = this.f7851c.iterator();
        while (it.hasNext()) {
            C0583d1 c0583d1 = (C0583d1) it.next();
            c0583d1.f7845c = drawable;
            c0583d1.a(c0583d1.f7847e);
        }
        this.f7853e = drawable;
    }

    public final void setOnItemClickListener(InterfaceC0580c1 interfaceC0580c1) {
        d3.i.e("itemClickListener", interfaceC0580c1);
        this.f7852d = interfaceC0580c1;
        Iterator it = this.f7851c.iterator();
        while (it.hasNext()) {
            ((C0583d1) it.next()).setOnClickListener(new ViewOnClickListenerC0577b1(interfaceC0580c1, this, 0));
        }
    }

    public final void setSelectCircle(Drawable drawable) {
        Iterator it = this.f7851c.iterator();
        while (it.hasNext()) {
            C0583d1 c0583d1 = (C0583d1) it.next();
            c0583d1.f7846d = drawable;
            c0583d1.a(c0583d1.f7847e);
        }
        this.f = drawable;
    }

    public final void setSelectedPosition(int i5) {
        if (i5 < 0) {
            i5 = 0;
        } else {
            ArrayList arrayList = this.f7851c;
            if (i5 >= arrayList.size()) {
                i5 = arrayList.size() - 1;
            }
        }
        this.f7854g = i5;
        a();
    }
}
