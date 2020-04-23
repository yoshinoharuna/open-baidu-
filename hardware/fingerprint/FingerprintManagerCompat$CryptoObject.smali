.class public Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;

.field public final mCipher:Ljavax/crypto/Cipher;

.field public final mMac:Ljavax/crypto/Mac;

.field public final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 5
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 206
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

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

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 5
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 213
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const v2, 0x10001

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

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 5
    .parameter
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 219
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

    const v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/baidu/titan/sdk/runtime/InitContext;->initArgs:[Ljava/lang/Object;

    const/16 v3, 0x0

    aput-object p1, v2, v3

    const v2, 0x10002

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
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0

    :cond_1
    move-object v2, v0

    const/high16 v3, 0x10

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/Cipher;

    return-object v1
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100001

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/Mac;

    return-object v1
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    sget-object v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0

    :cond_1
    move-object v2, v0

    const v3, 0x100002

    invoke-interface/range {v2 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeV(ILjava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->objValue:Ljava/lang/Object;

    check-cast v1, Ljava/security/Signature;

    return-object v1
.end method
