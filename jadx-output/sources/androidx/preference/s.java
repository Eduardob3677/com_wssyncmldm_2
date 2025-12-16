package androidx.preference;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.samsung.android.knox.ex.KnoxContract;
import e.C0403g;
import e.C0406j;
import e.DialogInterfaceC0407k;

/* loaded from: classes.dex */
public abstract class s extends androidx.fragment.app.r implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public DialogPreference f4725c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f4726d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f4727e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f4728g;

    /* renamed from: h, reason: collision with root package name */
    public int f4729h;

    /* renamed from: i, reason: collision with root package name */
    public BitmapDrawable f4730i;

    /* renamed from: j, reason: collision with root package name */
    public int f4731j;

    public final DialogPreference g() {
        if (this.f4725c == null) {
            this.f4725c = (DialogPreference) ((z) getTargetFragment()).findPreference(requireArguments().getString(KnoxContract.KEY));
        }
        return this.f4725c;
    }

    public void h(View view) {
        int i5;
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence charSequence = this.f4728g;
            if (TextUtils.isEmpty(charSequence)) {
                i5 = 8;
            } else {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(charSequence);
                }
                i5 = 0;
            }
            if (viewFindViewById.getVisibility() != i5) {
                viewFindViewById.setVisibility(i5);
            }
        }
    }

    public abstract void i(boolean z4);

    public void j(C0406j c0406j) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        this.f4731j = i5;
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Fragment targetFragment = getTargetFragment();
        if (!(targetFragment instanceof z)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        z zVar = (z) targetFragment;
        String string = requireArguments().getString(KnoxContract.KEY);
        if (bundle != null) {
            this.f4726d = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f4727e = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f4728g = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f4729h = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f4730i = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) zVar.findPreference(string);
        this.f4725c = dialogPreference;
        this.f4726d = dialogPreference.f4568X;
        this.f4727e = dialogPreference.f4571a0;
        this.f = dialogPreference.f4572b0;
        this.f4728g = dialogPreference.f4569Y;
        this.f4729h = dialogPreference.f4573c0;
        Drawable drawable = dialogPreference.f4570Z;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.f4730i = (BitmapDrawable) drawable;
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.f4730i = new BitmapDrawable(getResources(), bitmapCreateBitmap);
    }

    @Override // androidx.fragment.app.r
    public final Dialog onCreateDialog(Bundle bundle) {
        this.f4731j = -2;
        C0406j c0406j = new C0406j(requireContext());
        CharSequence charSequence = this.f4726d;
        C0403g c0403g = c0406j.f6773a;
        c0403g.f6718d = charSequence;
        c0403g.f6717c = this.f4730i;
        c0403g.f6720g = this.f4727e;
        c0403g.f6721h = this;
        c0403g.f6722i = this.f;
        c0403g.f6723j = this;
        requireContext();
        int i5 = this.f4729h;
        View viewInflate = i5 != 0 ? getLayoutInflater().inflate(i5, (ViewGroup) null) : null;
        if (viewInflate != null) {
            h(viewInflate);
            c0403g.f6729q = viewInflate;
        } else {
            c0403g.f = this.f4728g;
        }
        j(c0406j);
        DialogInterfaceC0407k dialogInterfaceC0407kA = c0406j.a();
        if (this instanceof C0184d) {
            r.a(dialogInterfaceC0407kA.getWindow());
        }
        return dialogInterfaceC0407kA;
    }

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        i(this.f4731j == -1);
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f4726d);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f4727e);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f4728g);
        bundle.putInt("PreferenceDialogFragment.layout", this.f4729h);
        BitmapDrawable bitmapDrawable = this.f4730i;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
