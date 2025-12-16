package k;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import j.InterfaceC0506g;
import j.InterfaceC0519t;
import j.MenuC0508i;
import j.SubMenuC0499A;

/* renamed from: k.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0555A implements InterfaceC0519t, InterfaceC0506g {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f7652d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: c, reason: collision with root package name */
    public Object f7653c;

    public /* synthetic */ C0555A(Object obj) {
        this.f7653c = obj;
    }

    @Override // j.InterfaceC0519t
    public void a(MenuC0508i menuC0508i, boolean z4) {
        if (menuC0508i instanceof SubMenuC0499A) {
            ((SubMenuC0499A) menuC0508i).f7198z.k().c(false);
        }
        InterfaceC0519t interfaceC0519t = ((C0602k) this.f7653c).f7882g;
        if (interfaceC0519t != null) {
            interfaceC0519t.a(menuC0508i, z4);
        }
    }

    @Override // j.InterfaceC0519t
    public boolean b(MenuC0508i menuC0508i) {
        C0602k c0602k = (C0602k) this.f7653c;
        if (menuC0508i == c0602k.f7881e) {
            return false;
        }
        ((SubMenuC0499A) menuC0508i).f7197A.getClass();
        c0602k.getClass();
        InterfaceC0519t interfaceC0519t = c0602k.f7882g;
        if (interfaceC0519t != null) {
            return interfaceC0519t.b(menuC0508i);
        }
        return false;
    }

    @Override // j.InterfaceC0506g
    public void c(MenuC0508i menuC0508i) {
        InterfaceC0506g interfaceC0506g = ((ActionMenuView) this.f7653c).f3337x;
        if (interfaceC0506g != null) {
            interfaceC0506g.c(menuC0508i);
        }
    }

    @Override // j.InterfaceC0506g
    public boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        boolean zOnMenuItemSelected;
        InterfaceC0611n interfaceC0611n = ((ActionMenuView) this.f7653c).f3323C;
        if (interfaceC0611n == null) {
            return false;
        }
        Toolbar toolbar = ((B1) interfaceC0611n).f7662c;
        if (toolbar.f3521I.a(menuItem)) {
            zOnMenuItemSelected = true;
        } else {
            F1 f12 = toolbar.f3523K;
            zOnMenuItemSelected = f12 != null ? ((e.K) f12).f6662c.f6664b.onMenuItemSelected(0, menuItem) : false;
        }
        return zOnMenuItemSelected;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable e(Drawable drawable, boolean z4) {
        if (drawable instanceof C.g) {
            ((C.h) ((C.g) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i5 = 0; i5 < numberOfLayers; i5++) {
                    int id = layerDrawable.getId(i5);
                    drawableArr[i5] = e(layerDrawable.getDrawable(i5), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i6 = 0; i6 < numberOfLayers; i6++) {
                    layerDrawable2.setId(i6, layerDrawable.getId(i6));
                    layerDrawable2.setLayerGravity(i6, layerDrawable.getLayerGravity(i6));
                    layerDrawable2.setLayerWidth(i6, layerDrawable.getLayerWidth(i6));
                    layerDrawable2.setLayerHeight(i6, layerDrawable.getLayerHeight(i6));
                    layerDrawable2.setLayerInsetLeft(i6, layerDrawable.getLayerInsetLeft(i6));
                    layerDrawable2.setLayerInsetRight(i6, layerDrawable.getLayerInsetRight(i6));
                    layerDrawable2.setLayerInsetTop(i6, layerDrawable.getLayerInsetTop(i6));
                    layerDrawable2.setLayerInsetBottom(i6, layerDrawable.getLayerInsetBottom(i6));
                    layerDrawable2.setLayerInsetStart(i6, layerDrawable.getLayerInsetStart(i6));
                    layerDrawable2.setLayerInsetEnd(i6, layerDrawable.getLayerInsetEnd(i6));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f7653c) == null) {
                    this.f7653c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z4 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
