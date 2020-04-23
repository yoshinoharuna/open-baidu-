.class public Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/loader/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final synthetic this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method public constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$3;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

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

    const/high16 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    iget-object v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->callArgs:[Ljava/lang/Object;

    const/16 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/util/concurrent/Callable;

    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$3;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "An error occurred while executing doInBackground()"

    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v2, v1}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 168
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 166
    :catch_1
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    .line 164
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    const-string v1, "AsyncTask"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
