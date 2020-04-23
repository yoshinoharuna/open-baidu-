.class public synthetic Landroidx/loader/content/ModernAsyncTask$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .prologue
    sget-object v0, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptorStorage;->$ic:Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;

    if-nez v0, :cond_1

    .line 434
    :cond_0
    invoke-static {}, Landroidx/loader/content/ModernAsyncTask$Status;->values()[Landroidx/loader/content/ModernAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroidx/loader/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroidx/loader/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_1
    const v1, 0x6593c641

    const-string v2, "Landroidx/loader/content/ModernAsyncTask$4;"

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokeClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->interceptor:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-eqz v3, :cond_2

    sput-object v3, Landroidx/loader/content/ModernAsyncTask$4;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    :cond_2
    iget v5, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokePostClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    return-void
.end method
