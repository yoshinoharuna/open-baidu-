.class public final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

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

.method public static from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    move-object v1, v0

    const v2, 0x10001

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    return-object v1
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 4
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 126
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 127
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    .line 128
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    move-object v1, v0

    const v2, 0x10002

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v1
.end method

.method public static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 4
    .parameter
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 156
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 159
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 160
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_4
    return-object v0

    :cond_5
    move-object v1, v0

    const v2, 0x10003

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-object v1
.end method

.method public static wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 4
    .parameter
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0

    :cond_1
    move-object v1, v0

    const v2, 0x10004

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v1
.end method

.method public static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 4
    .parameter
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 143
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 144
    :cond_3
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 145
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_4
    return-object v0

    :cond_5
    move-object v1, v0

    const v2, 0x10005

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v1
.end method


# virtual methods
.method public authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_3

    .line 107
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 111
    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    .line 114
    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v2

    .line 117
    invoke-static {p4}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v5

    move v4, p2

    move-object v6, p5

    .line 113
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_2
    return-void

    :cond_3
    const/16 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v1, 0x0

    aput-object p1, v3, v1

    const/16 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x2

    aput-object p3, v3, v1

    const/16 v1, 0x3

    aput-object p4, v3, v1

    const/16 v1, 0x4

    aput-object p5, v3, v1

    const/high16 v1, 0x10

    move-object v2, p0

    invoke-interface/range {v0 .. v3}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeCommon(ILjava/lang/Object;[Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 67
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method

.method public isHardwareDetected()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_2

    .line 81
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 82
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->booleanValue:Z

    return v1
.end method
