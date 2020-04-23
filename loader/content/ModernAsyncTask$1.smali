.class public final Landroidx/loader/content/ModernAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const/high16 v2, 0x1

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
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModernAsyncTask #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    return-object v1
.end method
