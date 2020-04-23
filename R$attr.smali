.class public final Landroidx/core/R$attr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final alpha:I = 0x7f040036

.field public static final font:I = 0x7f040169

.field public static final fontProviderAuthority:I = 0x7f04016b

.field public static final fontProviderCerts:I = 0x7f04016c

.field public static final fontProviderFetchStrategy:I = 0x7f04016d

.field public static final fontProviderFetchTimeout:I = 0x7f04016e

.field public static final fontProviderPackage:I = 0x7f04016f

.field public static final fontProviderQuery:I = 0x7f040170

.field public static final fontStyle:I = 0x7f040171

.field public static final fontVariationSettings:I = 0x7f040172

.field public static final fontWeight:I = 0x7f040173

.field public static final ttcIndex:I = 0x7f04042a


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/core/R$attr;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 13
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
