.class public final Landroidx/core/R$drawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final notification_action_background:I = 0x7f080c54

.field public static final notification_bg:I = 0x7f080c59

.field public static final notification_bg_low:I = 0x7f080c5a

.field public static final notification_bg_low_normal:I = 0x7f080c5b

.field public static final notification_bg_low_pressed:I = 0x7f080c5c

.field public static final notification_bg_normal:I = 0x7f080c5d

.field public static final notification_bg_normal_pressed:I = 0x7f080c5e

.field public static final notification_icon_background:I = 0x7f080c60

.field public static final notification_template_icon_bg:I = 0x7f080c62

.field public static final notification_template_icon_low_bg:I = 0x7f080c63

.field public static final notification_tile_bg:I = 0x7f080c64

.field public static final notify_panel_notification_icon_bg:I = 0x7f080c65


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/core/R$drawable;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 63
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
