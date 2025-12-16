package D0;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;
import o.C0713b;

/* loaded from: classes.dex */
public final class j extends k {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f405a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f406b;

    /* renamed from: c, reason: collision with root package name */
    public float f407c;

    /* renamed from: d, reason: collision with root package name */
    public float f408d;

    /* renamed from: e, reason: collision with root package name */
    public float f409e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f410g;

    /* renamed from: h, reason: collision with root package name */
    public float f411h;

    /* renamed from: i, reason: collision with root package name */
    public float f412i;

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f413j;

    /* renamed from: k, reason: collision with root package name */
    public final int f414k;

    /* renamed from: l, reason: collision with root package name */
    public String f415l;

    public j() {
        this.f405a = new Matrix();
        this.f406b = new ArrayList();
        this.f407c = 0.0f;
        this.f408d = 0.0f;
        this.f409e = 0.0f;
        this.f = 1.0f;
        this.f410g = 1.0f;
        this.f411h = 0.0f;
        this.f412i = 0.0f;
        this.f413j = new Matrix();
        this.f415l = null;
    }

    @Override // D0.k
    public final boolean a() {
        int i5 = 0;
        while (true) {
            ArrayList arrayList = this.f406b;
            if (i5 >= arrayList.size()) {
                return false;
            }
            if (((k) arrayList.get(i5)).a()) {
                return true;
            }
            i5++;
        }
    }

    @Override // D0.k
    public final boolean b(int[] iArr) {
        int i5 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.f406b;
            if (i5 >= arrayList.size()) {
                return zB;
            }
            zB |= ((k) arrayList.get(i5)).b(iArr);
            i5++;
        }
    }

    public final void c() {
        Matrix matrix = this.f413j;
        matrix.reset();
        matrix.postTranslate(-this.f408d, -this.f409e);
        matrix.postScale(this.f, this.f410g);
        matrix.postRotate(this.f407c, 0.0f, 0.0f);
        matrix.postTranslate(this.f411h + this.f408d, this.f412i + this.f409e);
    }

    public String getGroupName() {
        return this.f415l;
    }

    public Matrix getLocalMatrix() {
        return this.f413j;
    }

    public float getPivotX() {
        return this.f408d;
    }

    public float getPivotY() {
        return this.f409e;
    }

    public float getRotation() {
        return this.f407c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.f410g;
    }

    public float getTranslateX() {
        return this.f411h;
    }

    public float getTranslateY() {
        return this.f412i;
    }

    public void setPivotX(float f) {
        if (f != this.f408d) {
            this.f408d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.f409e) {
            this.f409e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.f407c) {
            this.f407c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.f410g) {
            this.f410g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.f411h) {
            this.f411h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.f412i) {
            this.f412i = f;
            c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(j jVar, C0713b c0713b) {
        h hVar;
        this.f405a = new Matrix();
        this.f406b = new ArrayList();
        this.f407c = 0.0f;
        this.f408d = 0.0f;
        this.f409e = 0.0f;
        this.f = 1.0f;
        this.f410g = 1.0f;
        this.f411h = 0.0f;
        this.f412i = 0.0f;
        Matrix matrix = new Matrix();
        this.f413j = matrix;
        this.f415l = null;
        this.f407c = jVar.f407c;
        this.f408d = jVar.f408d;
        this.f409e = jVar.f409e;
        this.f = jVar.f;
        this.f410g = jVar.f410g;
        this.f411h = jVar.f411h;
        this.f412i = jVar.f412i;
        String str = jVar.f415l;
        this.f415l = str;
        this.f414k = jVar.f414k;
        if (str != null) {
            c0713b.put(str, this);
        }
        matrix.set(jVar.f413j);
        ArrayList arrayList = jVar.f406b;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            Object obj = arrayList.get(i5);
            if (obj instanceof j) {
                this.f406b.add(new j((j) obj, c0713b));
            } else {
                if (obj instanceof i) {
                    i iVar = (i) obj;
                    i iVar2 = new i(iVar);
                    iVar2.f = 0.0f;
                    iVar2.f398h = 1.0f;
                    iVar2.f399i = 1.0f;
                    iVar2.f400j = 0.0f;
                    iVar2.f401k = 1.0f;
                    iVar2.f402l = 0.0f;
                    iVar2.f403m = Paint.Cap.BUTT;
                    iVar2.n = Paint.Join.MITER;
                    iVar2.f404o = 4.0f;
                    iVar2.f396e = iVar.f396e;
                    iVar2.f = iVar.f;
                    iVar2.f398h = iVar.f398h;
                    iVar2.f397g = iVar.f397g;
                    iVar2.f418c = iVar.f418c;
                    iVar2.f399i = iVar.f399i;
                    iVar2.f400j = iVar.f400j;
                    iVar2.f401k = iVar.f401k;
                    iVar2.f402l = iVar.f402l;
                    iVar2.f403m = iVar.f403m;
                    iVar2.n = iVar.n;
                    iVar2.f404o = iVar.f404o;
                    hVar = iVar2;
                } else if (obj instanceof h) {
                    hVar = new h((h) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.f406b.add(hVar);
                Object obj2 = hVar.f417b;
                if (obj2 != null) {
                    c0713b.put(obj2, hVar);
                }
            }
        }
    }
}
