package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import f1.AbstractC0420a;

/* renamed from: k.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0632x extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public final D3.e f8023c;

    /* renamed from: d, reason: collision with root package name */
    public final A.d f8024d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8025e;
    public boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0632x(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        w1.a(context);
        this.f8025e = false;
        v1.a(this, getContext());
        D3.e eVar = new D3.e(this);
        this.f8023c = eVar;
        eVar.l(attributeSet, i5);
        A.d dVar = new A.d(this);
        this.f8024d = dVar;
        dVar.h(attributeSet, i5);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            eVar.a();
        }
        A.d dVar = this.f8024d;
        if (dVar != null) {
            dVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        x1 x1Var;
        A.d dVar = this.f8024d;
        if (dVar == null || (x1Var = (x1) dVar.f12c) == null) {
            return null;
        }
        return x1Var.f8051a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        x1 x1Var;
        A.d dVar = this.f8024d;
        if (dVar == null || (x1Var = (x1) dVar.f12c) == null) {
            return null;
        }
        return x1Var.f8052b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return ((((ImageView) this.f8024d.f11b).getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getBackground() instanceof SeslRecoilDrawable) {
            this.f = true;
        }
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (!this.f || getStateListAnimator() == null) {
            return;
        }
        getStateListAnimator().jumpToCurrentState();
        this.f = false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        A.d dVar = this.f8024d;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        A.d dVar = this.f8024d;
        if (dVar != null && drawable != null && !this.f8025e) {
            dVar.f10a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (dVar != null) {
            dVar.a();
            if (this.f8025e) {
                return;
            }
            ImageView imageView = (ImageView) dVar.f11b;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(dVar.f10a);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i5) {
        super.setImageLevel(i5);
        this.f8025e = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i5) {
        A.d dVar = this.f8024d;
        if (dVar != null) {
            ImageView imageView = (ImageView) dVar.f11b;
            if (i5 != 0) {
                Drawable drawableA = AbstractC0420a.A(imageView.getContext(), i5);
                if (drawableA != null) {
                    Rect rect = AbstractC0591g0.f7856a;
                }
                imageView.setImageDrawable(drawableA);
            } else {
                imageView.setImageDrawable(null);
            }
            dVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        A.d dVar = this.f8024d;
        if (dVar != null) {
            dVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f8023c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        A.d dVar = this.f8024d;
        if (dVar != null) {
            if (((x1) dVar.f12c) == null) {
                dVar.f12c = new x1();
            }
            x1 x1Var = (x1) dVar.f12c;
            x1Var.f8051a = colorStateList;
            x1Var.f8054d = true;
            dVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        A.d dVar = this.f8024d;
        if (dVar != null) {
            if (((x1) dVar.f12c) == null) {
                dVar.f12c = new x1();
            }
            x1 x1Var = (x1) dVar.f12c;
            x1Var.f8052b = mode;
            x1Var.f8053c = true;
            dVar.a();
        }
    }
}
