.class public abstract Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 270
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


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeIL(ILjava/lang/Object;ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 4

    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeIL(ILjava/lang/Object;ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 4

    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
