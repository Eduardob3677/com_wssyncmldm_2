package Y0;

import J.InterfaceC0043q;
import J.q0;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import j1.C0554a;
import java.util.ArrayList;
import java.util.List;
import u.o;

/* loaded from: classes.dex */
public final class k implements InterfaceC0043q {

    /* renamed from: c, reason: collision with root package name */
    public int f2908c;

    /* renamed from: d, reason: collision with root package name */
    public int f2909d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2910e;

    public k(Context context) {
        this.f2909d = 0;
        this.f2910e = context;
    }

    @Override // J.InterfaceC0043q
    public q0 Y(View view, q0 q0Var) {
        int i5 = q0Var.f1002a.f(7).f183b;
        int i6 = this.f2908c;
        View view2 = (View) this.f2910e;
        if (i6 >= 0) {
            view2.getLayoutParams().height = i6 + i5;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f2909d + i5, view2.getPaddingRight(), view2.getPaddingBottom());
        return q0Var;
    }

    public synchronized int a() {
        int i5 = this.f2909d;
        if (i5 != 0) {
            return i5;
        }
        PackageManager packageManager = ((Context) this.f2910e).getPackageManager();
        if (C0554a.a((Context) this.f2910e).f1317a.getPackageManager().checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("Metadata", "Google Play services missing or without correct permission.");
            return 0;
        }
        Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");
        intent.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f2909d = 2;
            return 2;
        }
        Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
        this.f2909d = 2;
        return 2;
    }

    public k(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f2910e = new ArrayList();
        this.f2909d = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), o.f9315g);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            if (index == 0) {
                this.f2908c = typedArrayObtainStyledAttributes.getResourceId(index, this.f2908c);
            } else if (index == 1) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f2909d);
                this.f2909d = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new u.l().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public k(View view, int i5, int i6) {
        this.f2908c = i5;
        this.f2910e = view;
        this.f2909d = i6;
    }
}
