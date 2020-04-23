.class public final Landroidx/core/R$dimen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final compat_button_inset_horizontal_material:I = 0x7f070277

.field public static final compat_button_inset_vertical_material:I = 0x7f070278

.field public static final compat_button_padding_horizontal_material:I = 0x7f070279

.field public static final compat_button_padding_vertical_material:I = 0x7f07027a

.field public static final compat_control_corner_material:I = 0x7f07027b

.field public static final compat_notification_large_icon_max_height:I = 0x7f07027c

.field public static final compat_notification_large_icon_max_width:I = 0x7f07027d

.field public static final notification_action_icon_size:I = 0x7f0704b8

.field public static final notification_action_text_size:I = 0x7f0704b9

.field public static final notification_big_circle_margin:I = 0x7f0704bb

.field public static final notification_content_margin_start:I = 0x7f0704bc

.field public static final notification_large_icon_height:I = 0x7f0704bd

.field public static final notification_large_icon_width:I = 0x7f0704be

.field public static final notification_main_column_padding_top:I = 0x7f0704bf

.field public static final notification_media_narrow_margin:I = 0x7f0704c0

.field public static final notification_right_icon_size:I = 0x7f0704c1

.field public static final notification_right_side_padding_top:I = 0x7f0704c2

.field public static final notification_small_icon_background_padding:I = 0x7f0704c3

.field public static final notification_small_icon_size_as_large:I = 0x7f0704c4

.field public static final notification_subtext_size:I = 0x7f0704c5

.field public static final notification_top_pad:I = 0x7f0704c6

.field public static final notification_top_pad_large_text:I = 0x7f0704c7


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/core/R$dimen;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 37
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
