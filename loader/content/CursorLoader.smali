.class public Landroidx/loader/content/CursorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field public mCursor:Landroid/database/Cursor;

.field public final mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field public mProjection:[Ljava/lang/String;

.field public mSelection:Ljava/lang/String;

.field public mSelectionArgs:[Ljava/lang/String;

.field public mSortOrder:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const/high16 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    iget-object v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->callArgs:[Ljava/lang/Object;

    const/16 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Landroid/content/Context;

    invoke-direct {p0, v5}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 138
    iput-object p2, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 139
    iput-object p3, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 140
    iput-object p4, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 142
    iput-object p6, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const/16 v3, 0x1

    aput-object p2, v2, v3

    const/16 v3, 0x2

    aput-object p3, v2, v3

    const/16 v3, 0x3

    aput-object p4, v2, v3

    const/16 v3, 0x4

    aput-object p5, v2, v3

    const/16 v3, 0x5

    aput-object p6, v2, v3

    const v2, 0x10001

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    iget-object v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->callArgs:[Ljava/lang/Object;

    const/16 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Landroid/content/Context;

    invoke-direct {p0, v5}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 86
    :cond_0
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_5

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 106
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 108
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCursor="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mContentChanged="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v8}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLLLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100004

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100005

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100006

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100007

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100008

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    return-object v1
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 56
    :cond_0
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-static/range {v2 .. v8}, Landroidx/core/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 69
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 70
    iget-object v2, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 72
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :cond_1
    :goto_0
    monitor-enter p0

    .line 79
    :try_start_4
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 80
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_5
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 80
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 58
    :cond_2
    :try_start_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0

    :catchall_3
    move-exception v0

    .line 61
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_3
    move-object v7, v0

    const v8, 0x100009

    invoke-interface/range {v7 .. v9}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000b

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public onReset()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 180
    :cond_0
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 183
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->onStopLoading()V

    .line 185
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000d

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onStartLoading()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_4

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->forceLoad()V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    const v3, 0x10000e

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onStopLoading()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->cancelLoad()Z

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000f

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100010

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100011

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100012

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100013

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/CursorLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100014

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
