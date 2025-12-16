package P;

import B.f;
import F0.h;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import k.s1;

/* loaded from: classes.dex */
public abstract class b extends BaseAdapter implements Filterable, c {

    /* renamed from: c, reason: collision with root package name */
    public boolean f2029c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2030d;

    /* renamed from: e, reason: collision with root package name */
    public Cursor f2031e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public a f2032g;

    /* renamed from: h, reason: collision with root package name */
    public h f2033h;

    /* renamed from: i, reason: collision with root package name */
    public d f2034i;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f2031e;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.f2032g;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                h hVar = this.f2033h;
                if (hVar != null) {
                    cursor2.unregisterDataSetObserver(hVar);
                }
            }
            this.f2031e = cursor;
            if (cursor != null) {
                a aVar2 = this.f2032g;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                h hVar2 = this.f2033h;
                if (hVar2 != null) {
                    cursor.registerDataSetObserver(hVar2);
                }
                this.f = cursor.getColumnIndexOrThrow("_id");
                this.f2029c = true;
                notifyDataSetChanged();
            } else {
                this.f = -1;
                this.f2029c = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f2029c || (cursor = this.f2031e) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i5, View view, ViewGroup viewGroup) {
        if (!this.f2029c) {
            return null;
        }
        this.f2031e.moveToPosition(i5);
        if (view == null) {
            s1 s1Var = (s1) this;
            view = s1Var.f7990l.inflate(s1Var.f7989k, viewGroup, false);
        }
        a(view, this.f2031e);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f2034i == null) {
            d dVar = new d();
            dVar.f2035a = this;
            this.f2034i = dVar;
        }
        return this.f2034i;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i5) {
        Cursor cursor;
        if (!this.f2029c || (cursor = this.f2031e) == null) {
            return null;
        }
        cursor.moveToPosition(i5);
        return this.f2031e;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i5) {
        Cursor cursor;
        if (this.f2029c && (cursor = this.f2031e) != null && cursor.moveToPosition(i5)) {
            return this.f2031e.getLong(this.f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i5, View view, ViewGroup viewGroup) {
        if (!this.f2029c) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f2031e.moveToPosition(i5)) {
            throw new IllegalStateException(f.t(i5, "couldn't move cursor to position "));
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f2031e);
        return view;
    }
}
