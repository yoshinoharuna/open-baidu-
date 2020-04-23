.class public abstract Landroidx/loader/content/AsyncTaskLoader;
.super Landroidx/loader/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/Loader<",
        "TD;>;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public volatile mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mHandler:Landroid/os/Handler;

.field public mLastLoadCompleteTime:J

.field public volatile mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field public mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

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

    const/16 v4, 0x1

    aget-object v6, v3, v4

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-direct {p0, v5, v6}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 6
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 124
    iput-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 133
    iput-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const/16 v3, 0x1

    aput-object p2, v2, v3

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

    invoke-direct {p0, v5}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 4

    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 233
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 234
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-ne p2, p1, :cond_1

    .line 236
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 240
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->deliverCancellation()V

    .line 241
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dispatchOnLoadComplete(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 246
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_1

    .line 248
    invoke-virtual {p0, p1, p2}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    invoke-virtual {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->commitContentChanged()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 258
    invoke-virtual {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

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
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_4

    .line 356
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const-string p4, " waiting="

    if-eqz p2, :cond_1

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean p2, p2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_1
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz p2, :cond_2

    .line 362
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean p2, p2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_2
    iget-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {p1, p2, p3}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 369
    invoke-static {p1, p2, v0, v1, p3}, Landroidx/core/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v8}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLLLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public executePendingTask()V
    .locals 6

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_4

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 213
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    iget-wide v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 222
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 223
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-wide v2, p0, Landroidx/loader/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    :cond_3
    return-void

    :cond_4
    move-object v4, v0

    const v5, 0x100004

    invoke-interface/range {v4 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 332
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move-object v2, v0

    const v3, 0x100005

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCancelLoad()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_7

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 163
    iget-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 166
    :cond_1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 173
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_2
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    return v1

    .line 177
    :cond_3
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 182
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    return v1

    .line 186
    :cond_4
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 190
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 192
    :cond_5
    iput-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    return v0

    :cond_6
    return v1

    :cond_7
    move-object v2, v0

    const v3, 0x100007

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100008

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onForceLoad()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    invoke-super {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    .line 153
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoad()Z

    .line 154
    new-instance v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Landroidx/loader/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 156
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100009

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x10000a

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    return-object v1
.end method

.method public setUpdateThrottle(J)V
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 144
    :cond_0
    iput-wide p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000b

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeJ(ILjava/lang/Object;J)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public waitForLoader()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 347
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000c

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
