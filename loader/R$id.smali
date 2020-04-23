.class public final Landroidx/loader/R$id;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final action_container:I = 0x7f09006f

.field public static final action_divider:I = 0x7f090071

.field public static final action_image:I = 0x7f090072

.field public static final action_text:I = 0x7f090079

.field public static final actions:I = 0x7f09007b

.field public static final async:I = 0x7f0901cc

.field public static final blocking:I = 0x7f0903c4

.field public static final chronometer:I = 0x7f0905bf

.field public static final forever:I = 0x7f090a56

.field public static final icon:I = 0x7f090bb8

.field public static final icon_group:I = 0x7f090bc0

.field public static final info:I = 0x7f090cb1

.field public static final italic:I = 0x7f090cf4

.field public static final line1:I = 0x7f090e28

.field public static final line3:I = 0x7f090e2a

.field public static final normal:I = 0x7f09100f

.field public static final notification_background:I = 0x7f091028

.field public static final notification_main_column:I = 0x7f09102d

.field public static final notification_main_column_container:I = 0x7f09102e

.field public static final right_icon:I = 0x7f091416

.field public static final right_side:I = 0x7f09141f

.field public static final tag_transition_group:I = 0x7f0917a2

.field public static final tag_unhandled_key_event_manager:I = 0x7f0917a4

.field public static final tag_unhandled_key_listeners:I = 0x7f0917a5

.field public static final text:I = 0x7f0917b7

.field public static final text2:I = 0x7f0917ba

.field public static final time:I = 0x7f09180d

.field public static final title:I = 0x7f091832


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/loader/R$id;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 79
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
