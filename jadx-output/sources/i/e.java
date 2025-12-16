package i;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;

/* loaded from: classes.dex */
public final class e extends ContextWrapper {
    public static Configuration f;

    /* renamed from: a, reason: collision with root package name */
    public int f7086a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f7087b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f7088c;

    /* renamed from: d, reason: collision with root package name */
    public Configuration f7089d;

    /* renamed from: e, reason: collision with root package name */
    public Resources f7090e;

    public e(Context context, int i5) {
        super(context);
        this.f7086a = i5;
    }

    public final void a(Configuration configuration) {
        if (this.f7090e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f7089d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f7089d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f7087b == null) {
            this.f7087b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f7087b.setTo(theme);
            }
        }
        this.f7087b.applyStyle(this.f7086a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Resources getResources() {
        if (this.f7090e == null) {
            Configuration configuration = this.f7089d;
            if (configuration == null) {
                this.f7090e = super.getResources();
            } else {
                if (f == null) {
                    Configuration configuration2 = new Configuration();
                    configuration2.fontScale = 0.0f;
                    f = configuration2;
                }
                if (!configuration.equals(f)) {
                    this.f7090e = AbstractC0476d.a(this, this.f7089d).getResources();
                }
            }
        }
        return this.f7090e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f7088c == null) {
            this.f7088c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f7088c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f7087b;
        if (theme != null) {
            return theme;
        }
        if (this.f7086a == 0) {
            this.f7086a = 2132017924;
        }
        b();
        return this.f7087b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i5) {
        if (this.f7086a != i5) {
            this.f7086a = i5;
            b();
        }
    }
}
