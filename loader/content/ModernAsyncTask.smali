.class public abstract Landroidx/loader/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;,
        Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;,
        Landroidx/loader/content/ModernAsyncTask$InternalHandler;,
        Landroidx/loader/content/ModernAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final CORE_POOL_SIZE:I = 0x5

.field public static final KEEP_ALIVE:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field public static final MAXIMUM_POOL_SIZE:I = 0x80

.field public static final MESSAGE_POST_PROGRESS:I = 0x2

.field public static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field public static sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

.field public static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public volatile mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

.field public final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/ModernAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .prologue
    sget-object v0, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptorStorage;->$ic:Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$1;

    invoke-direct {v0}, Landroidx/loader/content/ModernAsyncTask$1;-><init>()V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_1
    const v1, 0x59146651

    const-string v2, "Landroidx/loader/content/ModernAsyncTask;"

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokeClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->interceptor:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-eqz v3, :cond_2

    sput-object v3, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    :cond_2
    iget v5, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokePostClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$2;

    invoke-direct {v0, p0}, Landroidx/loader/content/ModernAsyncTask$2;-><init>(Landroidx/loader/content/ModernAsyncTask;)V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    .line 153
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$3;

    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Landroidx/loader/content/ModernAsyncTask$3;-><init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public static execute(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 462
    :cond_0
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object v1, v0

    const v2, 0x10002

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 115
    :cond_0
    const-class v0, Landroidx/loader/content/ModernAsyncTask;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    invoke-direct {v1}, Landroidx/loader/content/ModernAsyncTask$InternalHandler;-><init>()V

    sput-object v1, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    .line 119
    :cond_1
    sget-object v1, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move-object v1, v0

    const v2, 0x10003

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v3}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    return-object v1
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 4
    .parameter
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    sput-object p0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_1
    move-object v1, v0

    const v2, 0x10004

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeZ(ILjava/lang/Object;Z)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroidx/loader/content/ModernAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 398
    :cond_0
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroidx/loader/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/loader/content/ModernAsyncTask;

    return-object v1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroidx/loader/content/ModernAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_4

    .line 433
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 434
    sget-object p1, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    iget-object p2, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {p2}, Landroidx/loader/content/ModernAsyncTask$Status;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    .line 443
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_3
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 449
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->onPreExecute()V

    .line 451
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    iput-object p2, v0, Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 452
    iget-object p2, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :cond_4
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/loader/content/ModernAsyncTask;

    return-object v1
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 492
    :goto_0
    sget-object p1, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100004

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 348
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100005

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    return-object v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, v0

    const v3, 0x100006

    invoke-interface/range {v2 .. v7}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeJL(ILjava/lang/Object;JLjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    return-object v1
.end method

.method public final getStatus()Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100007

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x100008

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public onCancelled()V
    .locals 4

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100009

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->onCancelled()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000a

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000b

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000c

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000d

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1

    :cond_1
    move-object v3, v0

    const v4, 0x10000e

    invoke-interface/range {v3 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    return-object v1
.end method

.method public postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 176
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000f

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final varargs publishProgress([Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100010

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
