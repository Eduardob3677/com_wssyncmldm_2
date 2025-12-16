.class Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;
.super Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Real"
.end annotation


# static fields
.field public static final synthetic a:I


# instance fields
.field private final delegateClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final delegateField:Ljava/lang/reflect/Field;

.field private final featureClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final featureInfos:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mockDelegate:Ljava/lang/Object;

.field private final realDelegate:Ljava/lang/Object;

.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureInfos:Ljava/util/LinkedHashMap;

    const-string v0, "featureClass should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->makeDelegateField()Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "field annotated with @FeatureDelegate should exist"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateField:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->makeRealDelegate()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "field annotated with @FeatureDelegate should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->realDelegate:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->makeDelegateClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "interface annotated with @FeatureDelegate should exist and be assignment-compatible with field annotated with @FeatureDelegate"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->makeMockDelegate()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mock for delegate should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->mockDelegate:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->setFeatureInfos()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private makeDelegateClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-class v4, Lcom/samsung/android/fotaagent/common/feature/FeatureDelegate;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->realDelegate:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private makeDelegateField()Ljava/lang/reflect/Field;
    .locals 4

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-class v3, Lcom/samsung/android/fotaagent/common/feature/FeatureDelegate;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private makeMockDelegate()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private makeRealDelegate()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private setFeatureInfos()V
    .locals 14

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-class v4, Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureInfos:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v4}, Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;->values()[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4}, Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;->description()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$1;)V

    invoke-virtual {v5, v6, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getFeatureInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureInfos:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized indexOfInjectedValue(Ljava/lang/String;)I
    .locals 3

    const-string v0, "featureInfo for "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureInfos:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;->getCandidateValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/c;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/c;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized inject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "value should not be null; remove this feature("

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->restore(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->featureInfos:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$FeatureInfo;->convert(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateField:Ljava/lang/reflect/Field;

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->mockDelegate:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 1

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->realDelegate:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized restore(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->repository:Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->delegateField:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjector$Real;->realDelegate:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
