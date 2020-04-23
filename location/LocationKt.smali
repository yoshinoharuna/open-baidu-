.class public final Landroidx/core/location/LocationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u00a8\u0006\u0004"
    }
    d2 = {
        "component1",
        "",
        "Landroid/location/Location;",
        "component2",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static final component1(Landroid/location/Location;)D
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/core/location/LocationKt;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0

    :cond_1
    move-object v1, v0

    const/high16 v2, 0x1

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->doubleValue:D

    return-wide v1
.end method

.method public static final component2(Landroid/location/Location;)D
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    sget-object v0, Landroidx/core/location/LocationKt;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0

    :cond_1
    move-object v1, v0

    const v2, 0x10001

    const/16 v3, 0x0

    invoke-interface/range {v1 .. v4}, Lcom/baidu/titan/sdk/runtime/Interceptable;->invokeL(ILjava/lang/Object;Ljava/lang/Object;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/baidu/titan/sdk/runtime/InterceptResult;->doubleValue:D

    return-wide v1
.end method
