.class public final LJ0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/g;


# instance fields
.field public final a:Lc1/w;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:LT0/b;

.field public final f:LT0/b;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LT0/b;LT0/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg2/d;

    invoke-direct {v0}, Lg2/d;-><init>()V

    sget-object v1, LK0/c;->a:LK0/c;

    const-class v2, LK0/o;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/i;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    sget-object v1, LK0/f;->a:LK0/f;

    const-class v2, LK0/s;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/l;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    sget-object v1, LK0/d;->a:LK0/d;

    const-class v2, LK0/q;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/j;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    sget-object v1, LK0/b;->a:LK0/b;

    const-class v2, LK0/a;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/h;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    sget-object v1, LK0/e;->a:LK0/e;

    const-class v2, LK0/r;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/k;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    sget-object v1, LK0/g;->a:LK0/g;

    const-class v2, LK0/v;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const-class v2, LK0/n;

    invoke-virtual {v0, v2, v1}, Lg2/d;->a(Ljava/lang/Class;Le2/d;)Lf2/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg2/d;->d:Z

    new-instance v1, Lc1/w;

    invoke-direct {v1, v0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LJ0/c;->a:Lc1/w;

    iput-object p1, p0, LJ0/c;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, LJ0/c;->b:Landroid/net/ConnectivityManager;

    sget-object p1, LJ0/a;->c:Ljava/lang/String;

    invoke-static {p1}, LJ0/c;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, LJ0/c;->d:Ljava/net/URL;

    iput-object p3, p0, LJ0/c;->e:LT0/b;

    iput-object p2, p0, LJ0/c;->f:LT0/b;

    const p1, 0x9c40

    iput p1, p0, LJ0/c;->g:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(LL0/a;)LL0/a;
    .locals 6

    iget-object v0, p0, LJ0/c;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, LL0/a;->c()LJ3/d;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p1, LJ3/d;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const-string v3, "Property \"autoMetadata\" has not been set"

    if-eqz v2, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "sdk-version"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hardware"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os-uild"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-object v4, p1, LJ3/d;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz-offset"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v2, LK0/u;->c:Landroid/util/SparseArray;

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_0
    iget-object v4, p1, LJ3/d;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "net-type"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, LK0/t;->c:Landroid/util/SparseArray;

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, LK0/t;->c:Landroid/util/SparseArray;

    const/16 v0, 0x64

    goto :goto_1

    :cond_3
    sget-object v4, LK0/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LK0/t;

    if-eqz v4, :cond_1

    :goto_1
    iget-object v4, p1, LJ3/d;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobile-subtype"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {p1, v3, v0}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {p1, v3, v0}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LJ0/c;->c:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcc_mnc"

    invoke-virtual {p1, v3, v0}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "TransportRuntime."

    const-string v2, "CctTransportBackend"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to find version code for package"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application_build"

    invoke-virtual {p1, v0, p0}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ3/d;->d()LL0/a;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
