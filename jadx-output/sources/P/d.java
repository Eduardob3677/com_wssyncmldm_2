package P;

import android.database.Cursor;
import android.util.Log;
import android.widget.Filter;
import androidx.appcompat.widget.SearchView;
import k.s1;

/* loaded from: classes.dex */
public final class d extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public c f2035a;

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return ((s1) this.f2035a).c((Cursor) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        String string;
        Cursor cursorG;
        s1 s1Var = (s1) this.f2035a;
        if (charSequence == null) {
            string = "";
        } else {
            s1Var.getClass();
            string = charSequence.toString();
        }
        SearchView searchView = s1Var.f7991m;
        if (searchView.getVisibility() == 0 && searchView.getWindowVisibility() == 0) {
            try {
                cursorG = s1Var.g(s1Var.n, string);
                if (cursorG != null) {
                    cursorG.getCount();
                }
            } catch (RuntimeException e5) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e5);
            }
        } else {
            cursorG = null;
        }
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorG != null) {
            filterResults.count = cursorG.getCount();
            filterResults.values = cursorG;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        c cVar = this.f2035a;
        Cursor cursor = ((b) cVar).f2031e;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((s1) cVar).b((Cursor) obj);
    }
}
