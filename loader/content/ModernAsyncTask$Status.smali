.class public final enum Landroidx/loader/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/loader/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

.field public static final enum FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .prologue
    sget-object v0, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptorStorage;->$ic:Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 107
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 111
    new-instance v0, Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Landroidx/loader/content/ModernAsyncTask$Status;

    sget-object v4, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    aput-object v4, v0, v1

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

    return-void

    :cond_1
    const v1, 0x3b75caef

    const-string v2, "Landroidx/loader/content/ModernAsyncTask$Status;"

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokeClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->interceptor:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-eqz v3, :cond_2

    sput-object v3, Landroidx/loader/content/ModernAsyncTask$Status;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    :cond_2
    iget v5, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokePostClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const v2, 0x10001

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeUnInit(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    iget v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->flag:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x2

    iget-object v3, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->callArgs:[Ljava/lang/Object;

    const/16 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0x1

    aget-object v6, v3, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const-class v0, Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/loader/content/ModernAsyncTask$Status;

    return-object p0

    :cond_1
    move-object v1, v0

    const v2, 0x10002

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v1
.end method

.method public static values()[Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 4

    .prologue
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Landroidx/loader/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0

    :cond_1
    move-object v1, v0

    const v2, 0x10003

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v3}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, [Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v1
.end method
