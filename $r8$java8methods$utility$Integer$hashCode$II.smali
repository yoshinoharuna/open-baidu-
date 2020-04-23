.class public synthetic L$r8$java8methods$utility$Integer$hashCode$II;
.super Ljava/lang/Object;


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static synthetic hashCode(I)I
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->hashCode()I

    move-result p0

    return p0
.end method
