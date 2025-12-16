package C0;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.wssyncmldm.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class j extends t {

    /* renamed from: A, reason: collision with root package name */
    public static final String[] f283A = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: z, reason: collision with root package name */
    public final int f284z;

    public j(int i5) {
        this();
        this.f284z = i5;
    }

    public static void I(z zVar) {
        int visibility = zVar.f337b.getVisibility();
        HashMap map = zVar.f336a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = zVar.f337b;
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static F K(z zVar, z zVar2) {
        F f = new F();
        f.f257a = false;
        f.f258b = false;
        if (zVar != null) {
            HashMap map = zVar.f336a;
            if (map.containsKey("android:visibility:visibility")) {
                f.f259c = ((Integer) map.get("android:visibility:visibility")).intValue();
                f.f261e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                f.f259c = -1;
                f.f261e = null;
            }
        }
        if (zVar2 != null) {
            HashMap map2 = zVar2.f336a;
            if (map2.containsKey("android:visibility:visibility")) {
                f.f260d = ((Integer) map2.get("android:visibility:visibility")).intValue();
                f.f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                f.f260d = -1;
                f.f = null;
            }
        }
        if (zVar != null && zVar2 != null) {
            int i5 = f.f259c;
            int i6 = f.f260d;
            if (i5 == i6 && f.f261e == f.f) {
                return f;
            }
            if (i5 != i6) {
                if (i5 == 0) {
                    f.f258b = false;
                    f.f257a = true;
                } else if (i6 == 0) {
                    f.f258b = true;
                    f.f257a = true;
                }
            } else if (f.f == null) {
                f.f258b = false;
                f.f257a = true;
            } else if (f.f261e == null) {
                f.f258b = true;
                f.f257a = true;
            }
        } else if (zVar == null && f.f260d == 0) {
            f.f258b = true;
            f.f257a = true;
        } else if (zVar2 == null && f.f259c == 0) {
            f.f258b = false;
            f.f257a = true;
        }
        return f;
    }

    public final ObjectAnimator J(View view, float f, float f5) {
        if (f == f5) {
            return null;
        }
        C0013c c0013c = A.f247a;
        view.setTransitionAlpha(f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, A.f247a, f5);
        objectAnimatorOfFloat.addListener(new i(view));
        a(new h(0, view));
        return objectAnimatorOfFloat;
    }

    @Override // C0.t
    public final void e(z zVar) {
        I(zVar);
    }

    @Override // C0.t
    public final void h(z zVar) {
        I(zVar);
        HashMap map = zVar.f336a;
        C0013c c0013c = A.f247a;
        map.put("android:fade:transitionAlpha", Float.valueOf(zVar.f337b.getTransitionAlpha()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (K(o(r3, false), r(r3, false)).f257a != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0205  */
    @Override // C0.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Animator l(ViewGroup viewGroup, z zVar, z zVar2) {
        boolean z4;
        View view;
        int i5;
        Object obj;
        View view2;
        z zVar3;
        View view3;
        float f;
        ViewGroup viewGroup2;
        int i6;
        Bitmap bitmapCreateBitmap;
        float f5;
        j jVar;
        float fFloatValue;
        Float f6;
        int i7 = this.f284z;
        F fK = K(zVar, zVar2);
        if (!fK.f257a) {
            return null;
        }
        if (fK.f261e == null && fK.f == null) {
            return null;
        }
        boolean z5 = true;
        if (fK.f258b) {
            if ((i7 & 1) == 1 && zVar2 != null) {
                View view4 = zVar2.f337b;
                if (zVar == null) {
                    View view5 = (View) view4.getParent();
                }
                float fFloatValue2 = (zVar == null || (f6 = (Float) zVar.f336a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f6.floatValue();
                return J(view4, fFloatValue2 != 1.0f ? fFloatValue2 : 0.0f, 1.0f);
            }
            return null;
        }
        int i8 = fK.f260d;
        if ((i7 & 2) == 2 && zVar != null) {
            View view6 = zVar2 != null ? zVar2.f337b : null;
            View view7 = zVar.f337b;
            View view8 = (View) view7.getTag(R.id.save_overlay_view);
            if (view8 != null) {
                zVar3 = zVar;
                i5 = i8;
                obj = "android:fade:transitionAlpha";
                f = 1.0f;
                view3 = null;
            } else {
                if (view6 == null || view6.getParent() == null) {
                    if (view6 != null) {
                        z4 = false;
                    }
                    view = null;
                    if (!z4) {
                        i5 = i8;
                        obj = "android:fade:transitionAlpha";
                        view2 = view;
                        zVar3 = zVar;
                        view8 = view6;
                        view3 = view2;
                        f = 1.0f;
                        z5 = false;
                    } else if (view7.getParent() == null) {
                        zVar3 = zVar;
                        i5 = i8;
                        obj = "android:fade:transitionAlpha";
                        f = 1.0f;
                        z5 = false;
                        view3 = view;
                        view8 = view7;
                    } else {
                        if (view7.getParent() instanceof View) {
                            View view9 = (View) view7.getParent();
                            if (K(r(view9, true), o(view9, true)).f257a) {
                                i5 = i8;
                                obj = "android:fade:transitionAlpha";
                                view2 = view;
                                int id = view9.getId();
                                if (view9.getParent() == null && id != -1) {
                                    viewGroup.findViewById(id);
                                }
                            } else {
                                Matrix matrix = new Matrix();
                                matrix.setTranslate(-view9.getScrollX(), -view9.getScrollY());
                                C0013c c0013c = A.f247a;
                                view7.transformMatrixToGlobal(matrix);
                                viewGroup.transformMatrixToLocal(matrix);
                                RectF rectF = new RectF(0.0f, 0.0f, view7.getWidth(), view7.getHeight());
                                matrix.mapRect(rectF);
                                int iRound = Math.round(rectF.left);
                                int iRound2 = Math.round(rectF.top);
                                int iRound3 = Math.round(rectF.right);
                                int iRound4 = Math.round(rectF.bottom);
                                ImageView imageView = new ImageView(view7.getContext());
                                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                boolean z6 = !view7.isAttachedToWindow();
                                boolean zIsAttachedToWindow = viewGroup.isAttachedToWindow();
                                if (!z6) {
                                    view2 = view;
                                    viewGroup2 = null;
                                    i6 = 0;
                                } else if (zIsAttachedToWindow) {
                                    ViewGroup viewGroup3 = (ViewGroup) view7.getParent();
                                    int iIndexOfChild = viewGroup3.indexOfChild(view7);
                                    viewGroup.getOverlay().add(view7);
                                    viewGroup2 = viewGroup3;
                                    view2 = view;
                                    i6 = iIndexOfChild;
                                } else {
                                    i5 = i8;
                                    obj = "android:fade:transitionAlpha";
                                    view2 = view;
                                    bitmapCreateBitmap = null;
                                    if (bitmapCreateBitmap != null) {
                                        imageView.setImageBitmap(bitmapCreateBitmap);
                                    }
                                    imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
                                    imageView.layout(iRound, iRound2, iRound3, iRound4);
                                    zVar3 = zVar;
                                    view8 = imageView;
                                    view3 = view2;
                                    f = 1.0f;
                                    z5 = false;
                                }
                                i5 = i8;
                                int iRound5 = Math.round(rectF.width());
                                int iRound6 = Math.round(rectF.height());
                                if (iRound5 <= 0 || iRound6 <= 0) {
                                    obj = "android:fade:transitionAlpha";
                                    bitmapCreateBitmap = null;
                                } else {
                                    obj = "android:fade:transitionAlpha";
                                    float fMin = Math.min(1.0f, 1048576.0f / (iRound5 * iRound6));
                                    int iRound7 = Math.round(iRound5 * fMin);
                                    int iRound8 = Math.round(iRound6 * fMin);
                                    matrix.postTranslate(-rectF.left, -rectF.top);
                                    matrix.postScale(fMin, fMin);
                                    Picture picture = new Picture();
                                    Canvas canvasBeginRecording = picture.beginRecording(iRound7, iRound8);
                                    canvasBeginRecording.concat(matrix);
                                    view7.draw(canvasBeginRecording);
                                    picture.endRecording();
                                    bitmapCreateBitmap = Bitmap.createBitmap(picture);
                                }
                                if (z6) {
                                    viewGroup.getOverlay().remove(view7);
                                    viewGroup2.addView(view7, i6);
                                }
                                if (bitmapCreateBitmap != null) {
                                }
                                imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
                                imageView.layout(iRound, iRound2, iRound3, iRound4);
                                zVar3 = zVar;
                                view8 = imageView;
                                view3 = view2;
                                f = 1.0f;
                                z5 = false;
                            }
                        }
                        zVar3 = zVar;
                        view8 = view6;
                        view3 = view2;
                        f = 1.0f;
                        z5 = false;
                    }
                } else if (i8 == 4 || view7 == view6) {
                    view = view6;
                    z4 = false;
                    view6 = null;
                    if (!z4) {
                    }
                }
                z4 = true;
                view6 = null;
                view = null;
                if (!z4) {
                }
            }
            HashMap map = zVar3.f336a;
            if (view8 != null) {
                if (!z5) {
                    int[] iArr = (int[]) map.get("android:visibility:screenLocation");
                    int i9 = iArr[0];
                    int i10 = iArr[1];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr2);
                    view8.offsetLeftAndRight((i9 - iArr2[0]) - view8.getLeft());
                    view8.offsetTopAndBottom((i10 - iArr2[1]) - view8.getTop());
                    viewGroup.getOverlay().add(view8);
                }
                C0013c c0013c2 = A.f247a;
                Float f7 = (Float) map.get(obj);
                if (f7 != null) {
                    fFloatValue = f7.floatValue();
                    f5 = 0.0f;
                    jVar = this;
                } else {
                    f5 = 0.0f;
                    jVar = this;
                    fFloatValue = f;
                }
                ObjectAnimator objectAnimatorJ = jVar.J(view8, fFloatValue, f5);
                if (z5) {
                    return objectAnimatorJ;
                }
                if (objectAnimatorJ == null) {
                    viewGroup.getOverlay().remove(view8);
                    return objectAnimatorJ;
                }
                view7.setTag(R.id.save_overlay_view, view8);
                jVar.a(new D(jVar, viewGroup, view8, view7));
                return objectAnimatorJ;
            }
            Object obj2 = obj;
            if (view3 != null) {
                int visibility = view3.getVisibility();
                C0013c c0013c3 = A.f247a;
                view3.setTransitionVisibility(0);
                Float f8 = (Float) map.get(obj2);
                ObjectAnimator objectAnimatorJ2 = J(view3, f8 != null ? f8.floatValue() : f, 0.0f);
                if (objectAnimatorJ2 != null) {
                    E e5 = new E(i5, view3);
                    objectAnimatorJ2.addListener(e5);
                    objectAnimatorJ2.addPauseListener(e5);
                    a(e5);
                } else {
                    view3.setTransitionVisibility(visibility);
                }
                return objectAnimatorJ2;
            }
        }
        return null;
    }

    @Override // C0.t
    public final String[] q() {
        return f283A;
    }

    @Override // C0.t
    public final boolean s(z zVar, z zVar2) {
        if (zVar == null && zVar2 == null) {
            return false;
        }
        if (zVar != null && zVar2 != null && zVar2.f336a.containsKey("android:visibility:visibility") != zVar.f336a.containsKey("android:visibility:visibility")) {
            return false;
        }
        F fK = K(zVar, zVar2);
        if (fK.f257a) {
            return fK.f259c == 0 || fK.f260d == 0;
        }
        return false;
    }

    public j() {
        this.f284z = 3;
    }
}
