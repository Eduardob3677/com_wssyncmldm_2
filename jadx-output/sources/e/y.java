package e;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import i.AbstractC0474b;
import j.MenuC0508i;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* loaded from: classes.dex */
public final class y implements Window.Callback {

    /* renamed from: c, reason: collision with root package name */
    public final Window.Callback f6794c;

    /* renamed from: d, reason: collision with root package name */
    public K f6795d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6796e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6797g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C f6798h;

    public y(C c2, Window.Callback callback) {
        this.f6798h = c2;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f6794c = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f6796e = true;
            callback.onContentChanged();
        } finally {
            this.f6796e = false;
        }
    }

    public final boolean b(int i5, Menu menu) {
        return this.f6794c.onMenuOpened(i5, menu);
    }

    public final void c(int i5, Menu menu) {
        this.f6794c.onPanelClosed(i5, menu);
    }

    public final void d(List list, Menu menu, int i5) {
        i.n.a(this.f6794c, list, menu, i5);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f6794c.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z4 = this.f;
        Window.Callback callback = this.f6794c;
        return z4 ? callback.dispatchKeyEvent(keyEvent) : this.f6798h.v(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f6794c.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        C c2 = this.f6798h;
        c2.B();
        AbstractC0397a abstractC0397a = c2.f6636o;
        if (abstractC0397a != null && abstractC0397a.i(keyCode, keyEvent)) {
            return true;
        }
        B b3 = c2.f6611M;
        if (b3 != null && c2.G(b3, keyEvent.getKeyCode(), keyEvent)) {
            B b5 = c2.f6611M;
            if (b5 == null) {
                return true;
            }
            b5.f6596l = true;
            return true;
        }
        if (c2.f6611M == null) {
            B bA = c2.A(0);
            c2.H(bA, keyEvent);
            boolean zG = c2.G(bA, keyEvent.getKeyCode(), keyEvent);
            bA.f6595k = false;
            if (zG) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f6794c.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f6794c.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f6794c.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f6794c.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f6794c.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f6794c.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f6796e) {
            this.f6794c.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i5, Menu menu) {
        if (i5 != 0 || (menu instanceof MenuC0508i)) {
            return this.f6794c.onCreatePanelMenu(i5, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i5) {
        K k5 = this.f6795d;
        if (k5 != null) {
            View view = i5 == 0 ? new View(k5.f6662c.f6663a.f7694a.getContext()) : null;
            if (view != null) {
                return view;
            }
        }
        return this.f6794c.onCreatePanelView(i5);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f6794c.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i5, MenuItem menuItem) {
        return this.f6794c.onMenuItemSelected(i5, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i5, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b(i5, menu);
        C c2 = this.f6798h;
        if (i5 == 108) {
            c2.B();
            AbstractC0397a abstractC0397a = c2.f6636o;
            if (abstractC0397a != null) {
                abstractC0397a.c(true);
            }
        } else {
            c2.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i5, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f6797g) {
            this.f6794c.onPanelClosed(i5, menu);
            return;
        }
        c(i5, menu);
        C c2 = this.f6798h;
        if (i5 == 108) {
            c2.B();
            AbstractC0397a abstractC0397a = c2.f6636o;
            if (abstractC0397a != null) {
                abstractC0397a.c(false);
                return;
            }
            return;
        }
        if (i5 != 0) {
            c2.getClass();
            return;
        }
        B bA = c2.A(i5);
        if (bA.f6597m) {
            c2.t(bA, false);
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z4) {
        i.o.a(this.f6794c, z4);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i5, View view, Menu menu) {
        MenuC0508i menuC0508i = menu instanceof MenuC0508i ? (MenuC0508i) menu : null;
        if (i5 == 0 && menuC0508i == null) {
            return false;
        }
        if (menuC0508i != null) {
            menuC0508i.f7250x = true;
        }
        K k5 = this.f6795d;
        if (k5 != null && i5 == 0) {
            L l5 = k5.f6662c;
            if (!l5.f6666d) {
                l5.f6663a.f7704l = true;
                l5.f6666d = true;
            }
        }
        boolean zOnPreparePanel = this.f6794c.onPreparePanel(i5, view, menu);
        if (menuC0508i != null) {
            menuC0508i.f7250x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i5) {
        MenuC0508i menuC0508i = this.f6798h.A(0).f6592h;
        if (menuC0508i != null) {
            d(list, menuC0508i, i5);
        } else {
            d(list, menu, i5);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return i.m.a(this.f6794c, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f6794c.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z4) {
        this.f6794c.onWindowFocusChanged(z4);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i5) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = this.f6798h;
        c2.getClass();
        if (i5 != 0) {
            return i.m.b(this.f6794c, callback, i5);
        }
        com.google.firebase.messaging.p pVar = new com.google.firebase.messaging.p(c2.f6633k, callback);
        AbstractC0474b abstractC0474bO = c2.o(pVar);
        if (abstractC0474bO != null) {
            return pVar.u(abstractC0474bO);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f6794c.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
