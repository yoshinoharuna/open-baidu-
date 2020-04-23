.class public Landroidx/loader/content/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/Loader$OnLoadCanceledListener;,
        Landroidx/loader/content/Loader$OnLoadCompleteListener;,
        Landroidx/loader/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public mAbandoned:Z

.field public mContentChanged:Z

.field public mContext:Landroid/content/Context;

.field public mId:I

.field public mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field public mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field public mProcessingChange:Z

.field public mReset:Z

.field public mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 45
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mReset:Z

    .line 47
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 48
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 410
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onAbandon()V

    return-void

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public cancelLoad()Z
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public commitContentChanged()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo p1, "}"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public deliverCancellation()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 144
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0, p0}, Landroidx/loader/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroidx/loader/content/Loader;)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100004

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 131
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p0, p1}, Landroidx/loader/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100005

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

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
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_5

    .line 555
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz p2, :cond_2

    .line 558
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_2
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mReset:Z

    if-eqz p2, :cond_4

    .line 563
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :cond_5
    move-object v2, v0

    const v3, 0x100006

    invoke-interface/range {v2 .. v8}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeLLLL(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public forceLoad()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100007

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100008

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    return-object v1
.end method

.method public getId()I
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    iget v0, p0, Landroidx/loader/content/Loader;->mId:I

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x100009

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->intValue:I

    return v1
.end method

.method public isAbandoned()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 247
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x10000a

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public isReset()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x10000b

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public isStarted()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x10000c

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public onAbandon()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x10000d

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onCancelLoad()Z
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x10000e

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public onContentChanged()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 511
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x10000f

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onForceLoad()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100010

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onReset()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100011

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onStartLoading()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100012

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onStopLoading()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100013

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_1

    .line 176
    iput-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    .line 177
    iput p1, p0, Landroidx/loader/content/Loader;->mId:I

    return-void

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, v0

    const v3, 0x100014

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeIL(ILjava/lang/Object;ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_1

    .line 210
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, v0

    const v3, 0x100015

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public reset()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onReset()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 450
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 451
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 452
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100016

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public rollbackContentChanged()V
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 496
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    const v3, 0x100017

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final startLoading()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    .line 284
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 285
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100018

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public stopLoading()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 381
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100019

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public takeContentChanged()Z
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 471
    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    .line 472
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 473
    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return v0

    :cond_1
    move-object v2, v0

    const v3, 0x10001a

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x10001b

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 187
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    return-void

    .line 191
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v2, v0

    const v3, 0x10001c

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/Loader;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 223
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v2, v0

    const v3, 0x10001d

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
