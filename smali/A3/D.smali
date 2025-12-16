.class public final LA3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/C;
.implements LJ/q;
.implements Ld4/e;
.implements LN0/b;
.implements LN3/f;
.implements Li4/b;
.implements Lu1/a;
.implements Lu1/c;
.implements Ld4/a;


# static fields
.field public static f:LA3/D;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, LA3/D;->c:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :pswitch_0
    sget-object p1, LZ0/e;->c:LZ0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LA3/D;Lu1/i;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/d;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LA3/D;->c:I

    sparse-switch p2, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    const p2, 0x7f130104

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    iput p2, p0, LA3/D;->c:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "com.google.firebase.auth.api.Store."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    new-instance p1, LA/d;

    const-string p2, "StorageHelpers"

    new-array p3, p3, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :pswitch_0
    const-string p2, "android-keystore://firebear_master_key_id."

    const-string v0, "com.google.firebase.auth.api.crypto."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LA3/D;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/A0;->a()V

    new-instance v2, LJ3/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, LJ3/d;->h:Ljava/lang/Object;

    iput-object v1, v2, LJ3/d;->c:Ljava/lang/Object;

    iput-object v1, v2, LJ3/d;->d:Ljava/lang/Object;

    iput-object v1, v2, LJ3/d;->e:Ljava/lang/Object;

    iput-object v1, v2, LJ3/d;->f:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, LJ3/d;->t(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/E0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-virtual {v2, p1}, LJ3/d;->r(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android-keystore://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, v2, LJ3/d;->d:Ljava/lang/Object;

    invoke-virtual {v2}, LJ3/d;->v()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key URI must start with android-keystore://"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Exception encountered during crypto setup:\n"

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p2, "FirebearCryptoHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/16 v0, 0xd

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, LY0/e;

    invoke-direct {v0, p1}, LY0/e;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "Invalid interface descriptor: "

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p1, "MessengerIpcClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 4

    const/16 v0, 0xc

    iput v0, p0, LA3/D;->c:I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    new-instance v1, LX/i;

    invoke-direct {v1, p1}, LX/i;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object p0, LX/a;->b:LX/a;

    if-nez p0, :cond_1

    sget-object p0, LX/a;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, LX/a;->b:LX/a;

    if-nez v1, :cond_0

    new-instance v1, LX/a;

    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    const-class v3, LX/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, LX/a;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    sput-object v1, LX/a;->b:LX/a;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_2
    sget-object p0, LX/a;->b:LX/a;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LA3/D;->c:I

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p3, p0, LA3/D;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LW1/a;LP1/e;)V
    .locals 0

    const/16 p3, 0xf

    iput p3, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Li4/c;Li4/f;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, LA3/D;->c:I

    const-string v0, "equalityAxioms"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    new-instance p1, Lg4/l;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lg4/l;-><init>(Ljava/lang/String;)V

    new-instance v0, LA3/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr3/x;Lcom/google/firebase/messaging/p;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, LA3/D;->c:I

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "notFoundClasses"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr3/x;Lcom/google/firebase/messaging/p;Le4/a;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, LA3/D;->c:I

    const-string v0, "module"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "protocol"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LA3/D;->d:Ljava/lang/Object;

    new-instance p3, LA3/D;

    invoke-direct {p3, p1, p2}, LA3/D;-><init>(Lr3/x;Lcom/google/firebase/messaging/p;)V

    iput-object p3, p0, LA3/D;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls2/c;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LA3/D;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "className"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    iput-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    return-void
.end method

.method public static P0(Landroid/content/Context;Ljava/lang/String;)LA3/D;
    .locals 2

    sget-object v0, LA3/D;->f:LA3/D;

    if-eqz v0, :cond_0

    iget-object v0, v0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, LA3/D;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, p1}, LA3/D;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, LA3/D;->f:LA3/D;

    :cond_1
    sget-object p0, LA3/D;->f:LA3/D;

    return-object p0
.end method


# virtual methods
.method public A(Lk4/d;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->K0(Li4/b;Lk4/d;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public A0(Lk4/d;)Lh4/J;
    .locals 0

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public B(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->n0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public B0(Lk4/c;)Lh4/O;
    .locals 0

    invoke-static {p1}, Li3/x;->n(Lk4/c;)Lh4/O;

    move-result-object p0

    return-object p0
.end method

.method public C(Lk4/d;)V
    .locals 0

    invoke-static {p1}, Li3/x;->B0(Lk4/d;)V

    return-void
.end method

.method public C0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public D(Lk4/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Li3/x;->h(Li4/b;Lk4/d;)Lk4/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public D0(LL3/g;LN3/f;)Ls3/c;
    .locals 10

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p1, LL3/g;->e:I

    invoke-static {p2, v0}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v0

    iget-object v1, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v1, Lr3/x;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/messaging/p;

    invoke-static {v1, v0, v2}, Lo4/a;->g(Lr3/x;LQ3/b;Lcom/google/firebase/messaging/p;)Lr3/e;

    move-result-object v0

    sget-object v1, LR2/v;->c:LR2/v;

    iget-object v2, p1, LL3/g;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lj4/i;->f(Lr3/j;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x5

    invoke-static {v0, v2}, LT3/e;->o(Lr3/j;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lr3/e;->k()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/m;->c1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/k;

    if-eqz v2, :cond_7

    check-cast v2, Lu3/v;

    invoke-virtual {v2}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, LR2/z;->y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lu3/V;

    check-cast v4, Lu3/o;

    invoke-virtual {v4}, Lu3/o;->getName()LQ3/f;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, LL3/g;->f:Ljava/util/List;

    const-string v1, "proto.argumentList"

    invoke-static {v1, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL3/e;

    const-string v4, "it"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v2, LL3/e;->e:I

    invoke-static {p2, v4}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/V;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v6, LQ2/e;

    iget v7, v2, LL3/e;->e:I

    invoke-static {p2, v7}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v7

    check-cast v4, Lu3/W;

    invoke-virtual {v4}, Lu3/W;->e()Lh4/v;

    move-result-object v4

    const-string v8, "parameter.type"

    invoke-static {v8, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v2, LL3/e;->f:LL3/d;

    const-string v8, "proto.value"

    invoke-static {v8, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2, p2}, LA3/D;->J0(Lh4/v;LL3/d;LN3/f;)LV3/g;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v2}, LA3/D;->E0(LV3/g;Lh4/v;LL3/d;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v5, v8

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected argument value: actual type "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, LL3/d;->e:LL3/c;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, LV3/j;

    invoke-direct {v5, v2}, LV3/j;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v6, v7, v5}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    :cond_7
    new-instance p0, Ls3/c;

    invoke-interface {v0}, Lr3/e;->q()Lh4/z;

    move-result-object p1

    sget-object p2, Lr3/N;->a:Lr3/M;

    invoke-direct {p0, p1, v1, p2}, Ls3/c;-><init>(Lh4/z;Ljava/util/Map;Lr3/N;)V

    return-object p0
.end method

.method public E(Lk4/c;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LA3/D;->u0(Lk4/c;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->v0(Lk4/f;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Li3/x;->w0(Lk4/c;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E0(LV3/g;Lh4/v;LL3/d;)Z
    .locals 6

    iget-object v0, p3, LL3/d;->e:LL3/c;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ld4/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    iget-object v4, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v4, Lr3/x;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v4}, LV3/g;->a(Lr3/x;)Lh4/v;

    move-result-object p0

    invoke-static {p0, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, LV3/b;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, LV3/b;

    iget-object v1, v0, LV3/g;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v5, p3, LL3/d;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v1, v5, :cond_5

    invoke-interface {v4}, Lr3/x;->g()Lo3/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo3/i;->f(Lh4/v;)Lh4/v;

    move-result-object p1

    iget-object p2, v0, LV3/g;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    const-string v1, "<this>"

    invoke-static {v1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lh3/c;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {v1, v3, p2, v2}, Lh3/a;-><init>(III)V

    instance-of p2, v1, Ljava/util/Collection;

    if-eqz p2, :cond_2

    move-object p2, v1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lh3/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    move-object v1, p2

    check-cast v1, Lh3/b;

    iget-boolean v1, v1, Lh3/b;->e:Z

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Lh3/b;

    invoke-virtual {v1}, Lh3/b;->a()I

    move-result v1

    iget-object v4, v0, LV3/g;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV3/g;

    iget-object v5, p3, LL3/d;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/d;

    const-string v5, "value.getArrayElement(i)"

    invoke-static {v5, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, p1, v1}, LA3/D;->E0(LV3/g;Lh4/v;LL3/d;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p2}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of p1, p0, Lr3/e;

    if-eqz p1, :cond_7

    check-cast p0, Lr3/e;

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    sget-object p1, Lo3/i;->e:LQ3/f;

    sget-object p1, Lo3/m;->P:LQ3/e;

    invoke-static {p0, p1}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_8
    :goto_2
    return v2
.end method

.method public F(Lk4/b;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->E0(Lk4/b;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public F0(Ljava/lang/String;Lc3/b;)V
    .locals 9

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    new-instance v1, LI3/o;

    invoke-direct {v1, p0, p1}, LI3/o;-><init>(LA3/D;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, LI3/o;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ2/e;

    iget-object v3, v3, LQ2/e;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, v1, LI3/o;->c:LQ2/e;

    iget-object p2, p2, LQ2/e;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v3, v1, LI3/o;->a:Ljava/lang/String;

    const-string v4, "name"

    invoke-static {v4, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ret"

    invoke-static {v4, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, LJ3/s;->d:LJ3/s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    const/16 v7, 0x1e

    invoke-static/range {v2 .. v7}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3b

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "internalName"

    invoke-static {v2, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "jvmDescriptor"

    invoke-static {v2, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p2, v1, LI3/o;->c:LQ2/e;

    iget-object p2, p2, LQ2/e;->d:Ljava/lang/Object;

    check-cast p2, LI3/q;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ2/e;

    iget-object v2, v2, LQ2/e;->d:Ljava/lang/Object;

    check-cast v2, LI3/q;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, LI3/m;

    invoke-direct {p1, p2, v1}, LI3/m;-><init>(LI3/q;Ljava/util/ArrayList;)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public G(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;
    .locals 4

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    instance-of v0, p2, LL3/y;

    const/4 v1, 0x0

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Lc4/a;

    if-eqz v0, :cond_0

    iget-object p3, v2, Lc4/a;->e:LR3/p;

    if-eqz p3, :cond_3

    check-cast p2, LL3/y;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_0
    instance-of v0, p2, LL3/G;

    if-eqz v0, :cond_6

    invoke-static {p3}, Lk/Q0;->f(I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p3}, LB/f;->P(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported callable kind with property proto for receiver annotations: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p3, v2, Lc4/a;->i:LR3/p;

    if-eqz p3, :cond_3

    check-cast p2, LL3/G;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    sget-object v1, LR2/u;->c:LR2/u;

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/g;

    iget-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, LA3/D;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v2, LN3/f;

    invoke-virtual {v1, v0, v2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public G0(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    const-string v0, "."

    const-string v1, "Could not instantiate "

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const-string v4, "BackendRegistry"

    if-nez v2, :cond_6

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, "Context has no PackageManager."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TransportBackendDiscovery has no service info."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Application info not found."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v9, "backend:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_4
    iput-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    :cond_6
    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v2, Lcom/google/android/datatransport/cct/CctBackendFactory;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    goto :goto_9

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-object v3
.end method

.method public H(Lu1/h;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LA3/D;->c:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, LA3/D;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, Lo/b;

    invoke-virtual {v1, p0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :sswitch_0
    invoke-virtual {p1}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Landroid/content/Intent;)Lu1/n;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/messaging/c;->e:Lcom/google/firebase/messaging/c;

    sget-object v0, Lcom/google/firebase/messaging/e;->e:Lcom/google/firebase/messaging/e;

    invoke-virtual {p0, p1, v0}, Lu1/n;->g(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;

    move-result-object p1

    :goto_0
    return-object p1

    :sswitch_1
    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, LY0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lu1/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "google.messenger"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v0, p0}, LY0/a;->a(Landroid/os/Bundle;)Lu1/n;

    move-result-object p0

    sget-object p1, LY0/m;->c:LY0/m;

    sget-object v0, LY0/l;->d:LY0/l;

    invoke-virtual {p0, p1, v0}, Lu1/n;->i(Ljava/util/concurrent/Executor;Lu1/g;)Lu1/n;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public H0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public I(Lk4/d;)Lk4/d;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Li3/x;->H0(Lh4/m;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public I0(LG/g;)V
    .locals 3

    iget v0, p1, LG/g;->b:I

    iget-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ls2/c;

    if-nez v0, :cond_0

    new-instance v0, LG/a;

    iget-object p1, p1, LG/g;->a:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1}, LG/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, LG/b;

    const/4 v2, 0x0

    invoke-direct {p1, v0, p0, v2}, LG/b;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public J(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;
    .locals 0

    const-string p0, "proto"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public J0(Lh4/v;LL3/d;LN3/f;)LV3/g;
    .locals 4

    const-string v0, "nameResolver"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LN3/e;->M:LN3/b;

    iget v1, p2, LL3/d;->o:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p2, LL3/d;->e:LL3/c;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ld4/b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported annotation argument type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, LL3/d;->e:LL3/c;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p2, p2, LL3/d;->m:Ljava/util/List;

    const-string v0, "value.arrayElementList"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/d;

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Lr3/x;

    invoke-interface {v2}, Lr3/x;->g()Lo3/i;

    move-result-object v2

    invoke-virtual {v2}, Lo3/i;->e()Lh4/z;

    move-result-object v2

    const-string v3, "builtIns.anyType"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "it"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1, p3}, LA3/D;->J0(Lh4/v;LL3/d;LN3/f;)LV3/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, LV3/w;

    invoke-direct {p0, v0, p1}, LV3/w;-><init>(Ljava/util/List;Lh4/v;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance p1, LV3/a;

    iget-object p2, p2, LL3/d;->l:LL3/g;

    const-string v0, "value.annotation"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object p0

    invoke-direct {p1, p0}, LV3/g;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_5

    :pswitch_2
    new-instance p0, LV3/i;

    iget p1, p2, LL3/d;->j:I

    invoke-static {p3, p1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p1

    iget p2, p2, LL3/d;->k:I

    invoke-static {p3, p2}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance p0, LV3/r;

    iget p1, p2, LL3/d;->j:I

    invoke-static {p3, p1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p1

    iget p2, p2, LL3/d;->n:I

    invoke-direct {p0, p1, p2}, LV3/r;-><init>(LQ3/b;I)V

    goto/16 :goto_5

    :pswitch_4
    new-instance p0, LV3/v;

    iget p1, p2, LL3/d;->i:I

    invoke-interface {p3, p1}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance p0, LV3/c;

    iget-wide p1, p2, LL3/d;->f:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, LV3/c;-><init>(Z)V

    goto/16 :goto_5

    :pswitch_6
    new-instance p0, LV3/c;

    iget-wide p1, p2, LL3/d;->h:D

    invoke-direct {p0, p1, p2}, LV3/c;-><init>(D)V

    goto :goto_5

    :pswitch_7
    new-instance p0, LV3/c;

    iget p1, p2, LL3/d;->g:F

    invoke-direct {p0, p1}, LV3/c;-><init>(F)V

    goto :goto_5

    :pswitch_8
    iget-wide p0, p2, LL3/d;->f:J

    if-eqz v0, :cond_3

    new-instance p2, LV3/x;

    invoke-direct {p2, p0, p1}, LV3/x;-><init>(J)V

    :goto_4
    move-object p0, p2

    goto :goto_5

    :cond_3
    new-instance p2, LV3/s;

    invoke-direct {p2, p0, p1}, LV3/s;-><init>(J)V

    goto :goto_4

    :pswitch_9
    iget-wide p0, p2, LL3/d;->f:J

    long-to-int p0, p0

    if-eqz v0, :cond_4

    new-instance p1, LV3/x;

    invoke-direct {p1, p0}, LV3/x;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance p1, LV3/k;

    invoke-direct {p1, p0}, LV3/k;-><init>(I)V

    goto :goto_2

    :pswitch_a
    iget-wide p0, p2, LL3/d;->f:J

    long-to-int p0, p0

    int-to-short p0, p0

    if-eqz v0, :cond_5

    new-instance p1, LV3/x;

    invoke-direct {p1, p0}, LV3/x;-><init>(S)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, LV3/u;

    invoke-direct {p1, p0}, LV3/u;-><init>(S)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, LV3/e;

    iget-wide p1, p2, LL3/d;->f:J

    long-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, LV3/g;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_c
    iget-wide p0, p2, LL3/d;->f:J

    long-to-int p0, p0

    int-to-byte p0, p0

    if-eqz v0, :cond_6

    new-instance p1, LV3/x;

    invoke-direct {p1, p0}, LV3/x;-><init>(B)V

    goto/16 :goto_2

    :cond_6
    new-instance p1, LV3/d;

    invoke-direct {p1, p0}, LV3/d;-><init>(B)V

    goto/16 :goto_2

    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public K(Lk4/c;)I
    .locals 0

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    return p0
.end method

.method public K0(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/c;

    iget-object v5, v4, Ld/c;->a:Landroid/view/View;

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/c;

    invoke-virtual {v4}, Ld/c;->b()Z

    move-result v5

    if-nez v5, :cond_2

    iput-object p1, v4, Ld/c;->a:Landroid/view/View;

    goto :goto_0

    :cond_3
    new-instance v4, Ld/c;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v4, p1, p0}, Ld/c;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, v4, Ld/c;->a:Landroid/view/View;

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iput-boolean v1, v4, Ld/c;->c:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, v4, Ld/c;->c:Z

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, v4, Ld/c;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr p1, v2

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    iput p1, v4, Ld/c;->b:F

    iget-boolean p0, v4, Ld/c;->e:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, v4, Ld/c;->e:Z

    iget-object p0, v4, Ld/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_7
    iget v2, v4, Ld/c;->b:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v0

    aput v2, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Ld/c;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_2
    return-void
.end method

.method public L(Lk4/f;)I
    .locals 0

    invoke-static {p1}, Li3/x;->J0(Lk4/f;)I

    move-result p0

    return p0
.end method

.method public L0()V
    .locals 2

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, LA2/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public M(LQ3/b;)Ld4/d;
    .locals 3

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, LJ3/f;

    invoke-virtual {v0}, LJ3/f;->c()Ld4/i;

    move-result-object v1

    const-string v2, "<this>"

    iget-object v1, v1, Ld4/i;->c:Ld4/j;

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, LP3/f;->g:LP3/f;

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Le/v;

    invoke-static {p0, p1, v1}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {v1}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v1

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, LJ3/f;->f(Lw3/b;)Ld4/d;

    move-result-object p0

    return-object p0
.end method

.method public M0(I)LQ2/i;
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    iget-object v3, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v3, LL3/K;

    iget-object v3, v3, LL3/K;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL3/J;

    iget v3, p1, LL3/J;->f:I

    iget-object v4, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v4, LL3/L;

    iget-object v4, v4, LL3/L;->d:LR3/x;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, LL3/J;->g:LL3/I;

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    iget p1, p1, LL3/J;->e:I

    goto :goto_0

    :cond_3
    new-instance p0, LQ2/i;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LQ2/i;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V

    return-object p0
.end method

.method public N(I)Z
    .locals 0

    invoke-virtual {p0, p1}, LA3/D;->M0(I)LQ2/i;

    move-result-object p0

    iget-object p0, p0, LQ2/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public N0(LQ3/f;Ljava/lang/String;)Lcom/google/firebase/messaging/p;
    .locals 2

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/messaging/p;

    invoke-virtual {p1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {v1, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, LJ3/r;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, LJ3/r;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/messaging/p;-><init>(LA3/D;LJ3/r;)V

    return-object v0
.end method

.method public O(Lk4/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->l0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public O0(ZLcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/i;

    new-instance v1, LW1/h;

    invoke-direct {v1, p2}, LW1/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lu1/i;->c(Ljava/lang/Exception;)Z

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public P(Lk4/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    invoke-static {p0}, Li3/x;->q0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public Q(LU3/b;)Lh4/N;
    .locals 0

    invoke-static {p1}, Li3/x;->L0(LU3/b;)Lh4/N;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->a()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/n;->t()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/T;

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/T;->a([B)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Exception encountered while decrypting bytes:\n"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p1, "FirebearCryptoHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string p0, "FirebearCryptoHelper"

    const-string p1, "KeysetManager failed to initialize - unable to decrypt payload"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public R(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->q0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public R0()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "FirebearCryptoHelper"

    const-string v0, "KeysetManager failed to initialize - unable to get Public key"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/n;

    monitor-enter v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->a()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->j()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/n;->w(Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0

    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Exception encountered when attempting to get Public Key:\n"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "FirebearCryptoHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public S(Lr3/Q;Lk4/f;)Z
    .locals 0

    invoke-static {p1, p2}, Li3/x;->h0(Lr3/Q;Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public S0(Lorg/json/JSONObject;)La2/s;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "enrollmentTimestamp"

    const-string v2, "userMultiFactorInfo"

    const-string v3, "userMetadata"

    :try_start_0
    const-string v5, "cachedTokenState"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "applicationName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "anonymous"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "2"

    const-string v9, "version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v8, v9

    :cond_0
    const-string v9, "userInfos"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x0

    :goto_0
    const-string v14, "displayName"

    const-string v15, "phoneNumber"

    if-ge v13, v10, :cond_1

    :try_start_1
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "userId"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v12, "providerId"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v12, "email"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v12, "photoUrl"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v12, "isEmailVerified"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v23

    const-string v12, "rawUserInfo"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v4, La2/q;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v24}, La2/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string v1, "DefaultAuthUserInfo"

    const-string v2, "Failed to unpack UserInfo from JSON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/F2;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-static {v6}, LW1/g;->e(Ljava/lang/String;)LW1/g;

    move-result-object v4

    new-instance v6, La2/s;

    invoke-direct {v6, v4, v11}, La2/s;-><init>(LW1/g;Ljava/util/ArrayList;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/y4;

    move-result-object v4

    iput-object v4, v6, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    :cond_2
    if-nez v7, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v6, La2/s;->j:Ljava/lang/Boolean;

    :cond_3
    iput-object v8, v6, La2/s;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v3, :cond_4

    :catch_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :try_start_4
    const-string v4, "lastSignInTimestamp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v7, "creationTimestamp"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance v3, La2/t;

    invoke-direct {v3, v4, v5, v7, v8}, La2/t;-><init>(JJ)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    if-eqz v3, :cond_5

    :try_start_5
    iput-object v3, v6, La2/s;->k:La2/t;

    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_8

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "phone"

    const-string v5, "factorIdKey"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "uid"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v3, LY1/k;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, LY1/k;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v2}, La2/s;->g(Ljava/util/ArrayList;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    return-object v6

    :goto_4
    iget-object v1, v1, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, LA/d;

    iget-object v1, v1, LA/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public T(Lk4/b;)I
    .locals 0

    invoke-static {p1}, Li3/x;->p(Lk4/b;)I

    move-result p0

    return p0
.end method

.method public U(Ljava/util/ArrayList;)Lh4/Z;
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/Z;

    if-nez v3, :cond_1

    invoke-static {v5}, Lh4/c;->i(Lh4/v;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v0

    :goto_2
    instance-of v6, v5, Lh4/z;

    if-eqz v6, :cond_2

    check-cast v5, Lh4/z;

    goto :goto_3

    :cond_2
    instance-of v4, v5, Lh4/q;

    if-eqz v4, :cond_3

    const-string v4, "<this>"

    invoke-static {v4, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lh4/q;

    iget-object v5, v5, Lh4/q;->d:Lh4/z;

    move v4, v0

    :goto_3
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    if-eqz v3, :cond_5

    sget-object p0, Lj4/h;->z:Lj4/h;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_5

    :cond_5
    sget-object v0, Li4/t;->a:Li4/t;

    if-nez v4, :cond_6

    invoke-virtual {v0, p0}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p0

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/Z;

    invoke-static {v2}, Lh4/c;->y(Lh4/v;)Lh4/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p0}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p0

    invoke-virtual {v0, v1}, Li4/t;->b(Ljava/util/ArrayList;)Lh4/z;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {p1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/Z;

    :goto_5
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected some types"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public V(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;
    .locals 4

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->k:LR3/p;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, LR2/u;->c:LR2/u;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA3/D;

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v3, LN3/f;

    invoke-virtual {v2, v1, v3}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public W(Lk4/f;I)Lr3/Q;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->T(Lk4/f;I)Lr3/Q;

    move-result-object p0

    return-object p0
.end method

.method public X(Lk4/c;I)Lh4/N;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    return-object p0
.end method

.method public Y(Landroid/view/View;LJ/q0;)LJ/q0;
    .locals 13

    iget v0, p0, LA3/D;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, LJ1/o;

    iget v1, v0, LJ1/o;->a:I

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, LB1/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, LJ/q0;->a:LJ/o0;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, LJ/o0;->f(I)LB/c;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, LJ/o0;->f(I)LB/c;

    move-result-object v2

    iget v4, v3, LB/c;->b:I

    iget-object v5, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput v4, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    invoke-static {p1}, LJ1/m;->e(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-boolean v9, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v9, :cond_0

    invoke-virtual {p2}, LJ/q0;->a()I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    iget v10, v0, LJ1/o;->c:I

    add-int/2addr v6, v10

    :cond_0
    iget v0, v0, LJ1/o;->b:I

    iget-boolean v10, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    iget v11, v3, LB/c;->a:I

    if-eqz v10, :cond_2

    if-eqz v4, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    add-int/2addr v7, v11

    :cond_2
    iget-boolean v10, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    iget v12, v3, LB/c;->c:I

    if-eqz v10, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    add-int v8, v1, v12

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v1, v11, :cond_5

    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v1, v4

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-boolean v10, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-eqz v10, :cond_6

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v10, v12, :cond_6

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v1, v4

    :cond_6
    iget-boolean v10, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-eqz v10, :cond_7

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v3, LB/c;->b:I

    if-eq v10, v3, :cond_7

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1, v7, v0, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p0, p0, LB1/c;->d:Z

    if-eqz p0, :cond_9

    iget p1, v2, LB/c;->d:I

    iput p1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    :cond_9
    if-nez v9, :cond_a

    if-eqz p0, :cond_b

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J()V

    :cond_b
    return-object p2

    :pswitch_0
    invoke-static {p1, p2}, LJ/Q;->e(Landroid/view/View;LJ/q0;)LJ/q0;

    move-result-object p1

    iget-object p2, p1, LJ/q0;->a:LJ/o0;

    invoke-virtual {p2}, LJ/o0;->j()Z

    move-result p2

    if-eqz p2, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p1}, LJ/q0;->b()I

    move-result p2

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, LJ/q0;->d()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, LJ/q0;->c()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, LJ/q0;->a()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p2, :cond_d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, LJ/Q;->b(Landroid/view/View;LJ/q0;)LJ/q0;

    move-result-object v2

    invoke-virtual {v2}, LJ/q0;->b()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, LJ/q0;->d()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, LJ/q0;->c()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, LJ/q0;->a()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    new-instance p0, LJ/h0;

    invoke-direct {p0, p1}, LJ/h0;-><init>(LJ/q0;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2, v1, v0}, LB/c;->b(IIII)LB/c;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ/g0;->e(LB/c;)V

    invoke-virtual {p0}, LJ/g0;->b()LJ/q0;

    move-result-object p1

    :goto_5
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public Z(Lk4/c;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public a(Lh4/m;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->H0(Lh4/m;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public a0(LL3/W;LN3/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->p:LR3/p;

    invoke-virtual {p1, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, LR2/u;->c:LR2/u;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA3/D;

    invoke-virtual {v2, v1, p2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Lk4/c;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    return-void
.end method

.method public b0(Lh4/q;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh4/N;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->z0(Lh4/N;)Z

    move-result p0

    return p0
.end method

.method public c0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->l0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public d(Lk4/d;Lk4/f;)V
    .locals 0

    return-void
.end method

.method public d0(Lr3/Q;)I
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/Q;->A()I

    move-result p0

    const-string p1, "this.variance"

    invoke-static {p0, p1}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {p0}, Li3/x;->u(I)I

    move-result p0

    return p0
.end method

.method public e(Lk4/c;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LI3/g;

    return p0
.end method

.method public e0(Lk4/c;)Lh4/q;
    .locals 0

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    return-object p0
.end method

.method public f(Lk4/e;)I
    .locals 2

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lk4/d;

    if-eqz p0, :cond_0

    check-cast p1, Lk4/c;

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lk4/a;

    if-eqz p0, :cond_1

    check-cast p1, Lk4/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type argument list type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ld3/q;->a:Ld3/r;

    invoke-virtual {v1, p1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f0(Lk4/d;Z)Lh4/z;
    .locals 0

    invoke-static {p1, p2}, Li3/x;->l1(Lk4/d;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public g(Lk4/c;)Lh4/z;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->k1(Lh4/q;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public g0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->v0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, LM0/f;

    check-cast p0, LM0/d;

    invoke-direct {v1, v0, p0}, LM0/f;-><init>(Landroid/content/Context;LM0/d;)V

    return-object v1
.end method

.method public h(Lk4/b;)Li4/i;
    .locals 0

    invoke-static {p1}, Li3/x;->j1(Lk4/b;)Li4/i;

    move-result-object p0

    return-object p0
.end method

.method public h0(Lh4/q;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->k1(Lh4/q;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public i(Lk4/e;I)Lh4/N;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lk4/d;

    if-eqz p0, :cond_0

    check-cast p1, Lk4/c;

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lk4/a;

    if-eqz p0, :cond_1

    check-cast p1, Lk4/a;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(index)"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/N;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown type argument list type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ld3/q;->a:Ld3/r;

    invoke-virtual {v0, p1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i0(Lh4/N;)I
    .locals 0

    invoke-static {p1}, Li3/x;->e0(Lh4/N;)I

    move-result p0

    return p0
.end method

.method public j(Lh4/Z;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LA3/D;->o(Lk4/c;)Lh4/z;

    move-result-object v0

    invoke-static {v0}, Li3/x;->u0(Lk4/d;)Z

    move-result v0

    invoke-virtual {p0, p1}, LA3/D;->g(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j0(LL3/Q;LN3/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->o:LR3/p;

    invoke-virtual {p1, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, LR2/u;->c:LR2/u;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA3/D;

    invoke-virtual {v2, v1, p2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k(Lk4/d;)Lh4/z;
    .locals 0

    invoke-static {p1}, Li3/x;->o(Lk4/d;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public k0(Ld4/s;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->c:LR3/p;

    iget-object v1, p1, Ld4/s;->e:LL3/j;

    invoke-virtual {v1, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, LR2/u;->c:LR2/u;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL3/g;

    iget-object v3, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v3, LA3/D;

    iget-object v4, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v4, LN3/f;

    invoke-virtual {v3, v2, v4}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public l(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->k0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public l0(Lk4/b;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->y0(Lk4/b;)Z

    move-result p0

    return p0
.end method

.method public m(Lk4/d;Lk4/d;)Lh4/Z;
    .locals 0

    invoke-static {p0, p1, p2}, Li3/x;->x(Li4/b;Lk4/d;Lk4/d;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public m0(Lk4/d;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->u0(Lk4/d;)Z

    move-result p0

    return p0
.end method

.method public n(Lk4/c;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->F0(Lk4/c;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lk4/b;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LU3/a;

    return p0
.end method

.method public o(Lk4/c;)Lh4/z;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public o0(Lk4/f;)Ljava/util/Collection;
    .locals 0

    invoke-static {p1}, Li3/x;->f1(Lk4/f;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(Lu1/h;)V
    .locals 1

    iget v0, p0, LA3/D;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/d;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/messaging/d;->lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lu1/h;)V

    return-void

    :pswitch_0
    iget-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p1, LA3/D;

    iget-object p1, p1, LA3/D;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Lu1/i;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public p(Lk4/d;)Lk4/e;
    .locals 0

    invoke-static {p1}, Li3/x;->g(Lk4/d;)Lk4/e;

    move-result-object p0

    return-object p0
.end method

.method public p0(Lk4/d;)Lh4/m;
    .locals 0

    invoke-static {p1}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    return-object p0
.end method

.method public q(Lh4/N;)Lh4/Z;
    .locals 0

    invoke-static {p1}, Li3/x;->b0(Lh4/N;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lk4/c;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Li3/x;->i(Lk4/d;)Lh4/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public r(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, LL3/L;

    iget-object p0, p0, LL3/L;->d:LR3/x;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "strings.getString(index)"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public r0(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->m0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public s(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;IILL3/Z;)Ljava/util/List;
    .locals 1

    const-string p4, "container"

    invoke-static {p4, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "callableProto"

    invoke-static {p4, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, LB/f;->x(ILjava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p2, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p2, Lc4/a;

    iget-object p2, p2, Lc4/a;->n:LR3/p;

    invoke-virtual {p5, p2}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, LR2/u;->c:LR2/u;

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LL3/g;

    iget-object p5, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p5, LA3/D;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-virtual {p5, p4, v0}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public s0(Lk4/d;Lk4/d;)Z
    .locals 0

    invoke-static {p1, p2}, Li3/x;->i0(Lk4/d;Lk4/d;)Z

    move-result p0

    return p0
.end method

.method public t(Lk4/d;)Li4/a;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->e1(Li4/b;Lk4/d;)Li4/a;

    move-result-object p0

    return-object p0
.end method

.method public t0(Lk4/c;)Lk4/c;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->m1(Li4/b;Lk4/c;)Lk4/c;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LA3/D;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;
    .locals 4

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->j:LR3/p;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, LR2/u;->c:LR2/u;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA3/D;

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v3, LN3/f;

    invoke-virtual {v2, v1, v3}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public u0(Lk4/c;)Lh4/J;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LA3/D;->o(Lk4/c;)Lh4/z;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public v(Lk4/d;I)Lh4/N;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p2, :cond_0

    invoke-static {p1}, Li3/x;->f(Lk4/c;)I

    move-result p0

    if-ge p2, p0, :cond_0

    invoke-static {p1, p2}, Li3/x;->C(Lk4/c;I)Lh4/N;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public v0(Lk4/d;)Lk4/b;
    .locals 0

    invoke-static {p0, p1}, Li3/x;->h(Li4/b;Lk4/d;)Lk4/b;

    move-result-object p0

    return-object p0
.end method

.method public w(Lk4/d;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->o0(Lk4/c;)Z

    move-result p0

    return p0
.end method

.method public w0(Lk4/d;)V
    .locals 0

    invoke-static {p1}, Li3/x;->A0(Lk4/d;)V

    return-void
.end method

.method public x(Lk4/f;)Z
    .locals 0

    invoke-static {p1}, Li3/x;->r0(Lk4/f;)Z

    move-result p0

    return p0
.end method

.method public x0(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, LA3/D;->M0(I)LQ2/i;

    move-result-object p0

    iget-object p1, p0, LQ2/i;->c:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, LQ2/i;->d:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "."

    const/4 v3, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "/"

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public y(Ld4/s;LL3/t;)Ljava/util/List;
    .locals 4

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->l:LR3/p;

    invoke-virtual {p2, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, LR2/u;->c:LR2/u;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    iget-object v2, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA3/D;

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v3, LN3/f;

    invoke-virtual {v2, v1, v3}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public y0(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Lc4/a;

    iget-object v0, v0, Lc4/a;->m:LR3/p;

    invoke-static {p2, v0}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LL3/d;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, LA3/D;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast p1, LN3/f;

    invoke-virtual {p0, p3, p2, p1}, LA3/D;->J0(Lh4/v;LL3/d;LN3/f;)LV3/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public z(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;
    .locals 3

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    instance-of v0, p2, LL3/l;

    iget-object v1, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v1, Lc4/a;

    if-eqz v0, :cond_0

    check-cast p2, LL3/l;

    iget-object p3, v1, Lc4/a;->b:LR3/p;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p2, LL3/y;

    if-eqz v0, :cond_1

    check-cast p2, LL3/y;

    iget-object p3, v1, Lc4/a;->d:LR3/p;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_1
    instance-of v0, p2, LL3/G;

    if-eqz v0, :cond_7

    invoke-static {p3}, Lk/Q0;->f(I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    check-cast p2, LL3/G;

    iget-object p3, v1, Lc4/a;->h:LR3/p;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported callable kind with property proto"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p2, LL3/G;

    iget-object p3, v1, Lc4/a;->g:LR3/p;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_4
    check-cast p2, LL3/G;

    iget-object p3, v1, Lc4/a;->f:LR3/p;

    invoke-virtual {p2, p3}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-nez p2, :cond_5

    sget-object p2, LR2/u;->c:LR2/u;

    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/g;

    iget-object v1, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, LA3/D;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v2, LN3/f;

    invoke-virtual {v1, v0, v2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z0(Lk4/f;Lk4/f;)Z
    .locals 2

    const-string v0, "c1"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "c2"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lh4/J;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_6

    instance-of v0, p2, Lh4/J;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Li3/x;->e(Lk4/f;Lk4/f;)Z

    move-result v0

    if-nez v0, :cond_4

    check-cast p1, Lh4/J;

    check-cast p2, Lh4/J;

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Li4/c;

    invoke-interface {v0, p1, p2}, Li4/c;->a(Lh4/J;Lh4/J;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/J;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/J;

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
