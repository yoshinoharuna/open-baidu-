.class public final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final synthetic val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;


# direct methods
.method public constructor <init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 5
    .parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 169
    :cond_0
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

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

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    iput-object p0, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->thisArg:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeInitBody(ILcom/baidu/titan/sdk/runtime/InitContext;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

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

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

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
    .parameter
    .parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v6}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeIL(ILjava/lang/Object;ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4
    .parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .line 183
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x100003

    invoke-interface/range {v2 .. v5}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method
