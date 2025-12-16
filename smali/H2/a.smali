.class public abstract LH2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LH2/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWLProvider::"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LH2/a;->a:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LH2/a;->b:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/disagree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method
