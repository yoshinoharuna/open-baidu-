.class public final L_;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006J$\u0010\u0014\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005J$\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005R\"\u0010\u0003\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "LNetwork;",
        "",
        "()V",
        "networkObservers",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lkotlin/Function1;",
        "Landroid/net/NetworkInfo;",
        "",
        "networkTypeReceiver",
        "Network$networkTypeReceiver$1",
        "LNetwork$networkTypeReceiver$1;",
        "getNetworkInfo",
        "",
        "context",
        "Landroid/content/Context;",
        "getNetworkType",
        "isHasNetwork",
        "",
        "notifyNetworkTypeChange",
        "networkInfo",
        "observeNetworkType",
        "observer",
        "removeNetworkTypeObserver",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

.field public static final ib:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/NetworkInfo;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ic:LNetwork$networkTypeReceiver$1;

.field public static final ie:L_;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .prologue
    sget-object v0, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptorStorage;->$ic:Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;

    if-nez v0, :cond_1

    .line 12
    :cond_0
    new-instance v0, L_;

    invoke-direct {v0}, L_;-><init>()V

    sput-object v0, L_;->ie:L_;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    new-instance v0, LNetwork$networkTypeReceiver$1;

    invoke-direct {v0}, LNetwork$networkTypeReceiver$1;-><init>()V

    sput-object v0, L_;->ic:LNetwork$networkTypeReceiver$1;

    return-void

    :cond_1
    const v1, 0x12908

    const-string v2, "L_;"

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokeClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->interceptor:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-eqz v3, :cond_2

    sput-object v3, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    :cond_2
    iget v5, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokePostClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x10001

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public final _(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public final declared-synchronized _(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/NetworkInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v1, L_;->ic:LNetwork$networkTypeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    :cond_1
    sget-object p1, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 40
    sget-object p1, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final declared-synchronized __(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/NetworkInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_4

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 47
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    sget-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    sget-object p2, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 55
    sget-object p2, L_;->ic:LNetwork$networkTypeReceiver$1;

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final __(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 60
    :cond_0
    sget-object v0, L_;->ib:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 122
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 61
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final __(Landroid/content/Context;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, L_;->_(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    move-object v2, v0

    const v3, 0x100004

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public final getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    sget-object v0, L_;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_6

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unKonwn"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "connectivity"

    .line 71
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const-string v0, "WIFI"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    const-string v2, "3G"

    if-eqz p1, :cond_5

    .line 77
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5

    .line 78
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 99
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_0
    const-string p1, "4G"

    goto :goto_1

    :cond_2
    :goto_0
    :pswitch_1
    move-object v0, v2

    goto :goto_3

    :pswitch_2
    const-string p1, "2G"

    :goto_1
    move-object v0, p1

    goto :goto_3

    :goto_2
    const-string v3, "TD-SCDMA"

    .line 101
    invoke-static {v3, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WCDMA"

    .line 102
    invoke-static {v3, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CDMA2000"

    .line 103
    invoke-static {v3, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "subTypeName"

    .line 107
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get network type failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3}, Lcom/baidu/netdisk/kotlin/extension/LoggerKt;->e$default(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/SecurityException;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    move-object v3, v0

    const v4, 0x100005

    invoke-interface/range {v3 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
