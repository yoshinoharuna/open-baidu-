.class public final Landroidx/loader/content/AsyncTaskLoader$LoadTask;
.super Landroidx/loader/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final mDone:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader;

.field public waiting:Z


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 5
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

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

    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 60
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {p1}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_1
    throw p1

    :cond_2
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    return-object v1
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :cond_1
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 105
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100004

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public waitForLoader()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100005

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
