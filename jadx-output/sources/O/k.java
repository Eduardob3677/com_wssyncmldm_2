package O;

import J.Q;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import android.util.TypedValue;
import android.widget.EdgeEffect;
import androidx.core.widget.NestedScrollView;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class k extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1937a = 1;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f1938b;

    public /* synthetic */ k() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (this.f1937a) {
            case 0:
                NestedScrollView nestedScrollView = (NestedScrollView) this.f1938b.get();
                if (nestedScrollView != null) {
                    float f = NestedScrollView.f3612h0;
                    if (message.what == 1) {
                        int scrollRange = nestedScrollView.getScrollRange();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        nestedScrollView.f3629Q = (jCurrentTimeMillis - nestedScrollView.f3630R) / 1000;
                        if (jCurrentTimeMillis - nestedScrollView.f3632U >= nestedScrollView.f3631T) {
                            int iApplyDimension = (int) (TypedValue.applyDimension(1, 10.0f, nestedScrollView.f3634W.getResources().getDisplayMetrics()) + 0.5f);
                            nestedScrollView.f3618D = iApplyDimension;
                            long j3 = nestedScrollView.f3629Q;
                            if (j3 > 2 && j3 < 4) {
                                nestedScrollView.f3618D = iApplyDimension + ((int) (iApplyDimension * 0.1d));
                            } else if (j3 >= 4 && j3 < 5) {
                                nestedScrollView.f3618D = iApplyDimension + ((int) (iApplyDimension * 0.2d));
                            } else if (j3 >= 5) {
                                nestedScrollView.f3618D = iApplyDimension + ((int) (iApplyDimension * 0.3d));
                            }
                            int i5 = nestedScrollView.f3628O == 2 ? nestedScrollView.f3618D * (-1) : nestedScrollView.f3618D;
                            WeakHashMap weakHashMap = Q.f940a;
                            nestedScrollView.getLayoutDirection();
                            boolean z4 = false;
                            if ((i5 < 0 && nestedScrollView.getScrollY() > 0) || (i5 > 0 && nestedScrollView.getScrollY() < scrollRange)) {
                                nestedScrollView.x(2, 1);
                                if (!nestedScrollView.f3615A.c(0, i5, null, null, 1)) {
                                    nestedScrollView.w(0, i5, 250);
                                } else if (nestedScrollView.f3636b0 && (!nestedScrollView.canScrollVertically(-1) || nestedScrollView.f3640d0 != 0)) {
                                    int i6 = nestedScrollView.f3640d0 - i5;
                                    nestedScrollView.f3640d0 = i6;
                                    if (i6 < 0) {
                                        nestedScrollView.f3640d0 = 0;
                                    } else {
                                        int i7 = nestedScrollView.f3642e0;
                                        if (i6 > i7) {
                                            nestedScrollView.f3640d0 = i7;
                                        }
                                    }
                                }
                                nestedScrollView.f3625L.sendEmptyMessageDelayed(1, 7L);
                                break;
                            } else {
                                int overScrollMode = nestedScrollView.getOverScrollMode();
                                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                                    z4 = true;
                                }
                                if (z4 && !nestedScrollView.f3633V) {
                                    int i8 = nestedScrollView.f3628O;
                                    EdgeEffect edgeEffect = nestedScrollView.f3645h;
                                    EdgeEffect edgeEffect2 = nestedScrollView.f3644g;
                                    if (i8 == 2) {
                                        edgeEffect2.setSize((nestedScrollView.getWidth() - nestedScrollView.getPaddingLeft()) - nestedScrollView.getPaddingRight(), nestedScrollView.getHeight());
                                        edgeEffect2.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                        if (!edgeEffect.isFinished()) {
                                            edgeEffect.onRelease();
                                        }
                                    } else if (i8 == 1) {
                                        edgeEffect.setSize((nestedScrollView.getWidth() - nestedScrollView.getPaddingLeft()) - nestedScrollView.getPaddingRight(), nestedScrollView.getHeight());
                                        edgeEffect.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                                        if (!edgeEffect2.isFinished()) {
                                            edgeEffect2.onRelease();
                                        }
                                    }
                                    if (!edgeEffect2.isFinished() || !edgeEffect.isFinished()) {
                                        nestedScrollView.invalidate();
                                    }
                                    nestedScrollView.f3633V = true;
                                }
                                if (!z4 && !nestedScrollView.f3633V) {
                                    nestedScrollView.f3633V = true;
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
            default:
                int i9 = message.what;
                if (i9 != -3 && i9 != -2 && i9 != -1) {
                    if (i9 == 1) {
                        ((DialogInterface) message.obj).dismiss();
                        break;
                    }
                } else {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f1938b.get(), message.what);
                    break;
                }
                break;
        }
    }

    public k(NestedScrollView nestedScrollView) {
        this.f1938b = new WeakReference(nestedScrollView);
    }
}
