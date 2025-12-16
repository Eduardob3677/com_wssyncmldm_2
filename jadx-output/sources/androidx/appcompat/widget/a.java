package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchView f3564c;

    public a(SearchView searchView) {
        this.f3564c = searchView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchView searchView = this.f3564c;
        if (view == searchView.f3404v) {
            searchView.r();
            return;
        }
        if (view == searchView.f3406x) {
            searchView.n();
            return;
        }
        if (view == searchView.f3405w) {
            searchView.s();
            return;
        }
        if (view != searchView.f3407y) {
            SearchView.SearchAutoComplete searchAutoComplete = searchView.f3400r;
            if (view == searchAutoComplete) {
                c.a(searchAutoComplete);
                return;
            }
            return;
        }
        SearchableInfo searchableInfo = searchView.f3397h0;
        if (searchableInfo == null) {
            return;
        }
        try {
            boolean voiceSearchLaunchWebSearch = searchableInfo.getVoiceSearchLaunchWebSearch();
            Context context = searchView.k0;
            if (!voiceSearchLaunchWebSearch) {
                if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    context.startActivity(searchView.m(searchView.f3380K, searchableInfo));
                }
            } else {
                Intent intent = new Intent(searchView.f3379J);
                ComponentName searchActivity = searchableInfo.getSearchActivity();
                intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                context.startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }
}
