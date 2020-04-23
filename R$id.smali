.class public final Landroidx/core/R$id;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final accessibility_action_clickable_span:I = 0x7f09003c

.field public static final accessibility_custom_action_0:I = 0x7f09003d

.field public static final accessibility_custom_action_1:I = 0x7f09003e

.field public static final accessibility_custom_action_10:I = 0x7f09003f

.field public static final accessibility_custom_action_11:I = 0x7f090040

.field public static final accessibility_custom_action_12:I = 0x7f090041

.field public static final accessibility_custom_action_13:I = 0x7f090042

.field public static final accessibility_custom_action_14:I = 0x7f090043

.field public static final accessibility_custom_action_15:I = 0x7f090044

.field public static final accessibility_custom_action_16:I = 0x7f090045

.field public static final accessibility_custom_action_17:I = 0x7f090046

.field public static final accessibility_custom_action_18:I = 0x7f090047

.field public static final accessibility_custom_action_19:I = 0x7f090048

.field public static final accessibility_custom_action_2:I = 0x7f090049

.field public static final accessibility_custom_action_20:I = 0x7f09004a

.field public static final accessibility_custom_action_21:I = 0x7f09004b

.field public static final accessibility_custom_action_22:I = 0x7f09004c

.field public static final accessibility_custom_action_23:I = 0x7f09004d

.field public static final accessibility_custom_action_24:I = 0x7f09004e

.field public static final accessibility_custom_action_25:I = 0x7f09004f

.field public static final accessibility_custom_action_26:I = 0x7f090050

.field public static final accessibility_custom_action_27:I = 0x7f090051

.field public static final accessibility_custom_action_28:I = 0x7f090052

.field public static final accessibility_custom_action_29:I = 0x7f090053

.field public static final accessibility_custom_action_3:I = 0x7f090054

.field public static final accessibility_custom_action_30:I = 0x7f090055

.field public static final accessibility_custom_action_31:I = 0x7f090056

.field public static final accessibility_custom_action_4:I = 0x7f090057

.field public static final accessibility_custom_action_5:I = 0x7f090058

.field public static final accessibility_custom_action_6:I = 0x7f090059

.field public static final accessibility_custom_action_7:I = 0x7f09005a

.field public static final accessibility_custom_action_8:I = 0x7f09005b

.field public static final accessibility_custom_action_9:I = 0x7f09005c

.field public static final action_container:I = 0x7f09006f

.field public static final action_divider:I = 0x7f090071

.field public static final action_image:I = 0x7f090072

.field public static final action_text:I = 0x7f090079

.field public static final actions:I = 0x7f09007b

.field public static final async:I = 0x7f0901cc

.field public static final blocking:I = 0x7f0903c4

.field public static final chronometer:I = 0x7f0905bf

.field public static final dialog_button:I = 0x7f0907a7

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

.field public static final tag_accessibility_actions:I = 0x7f091794

.field public static final tag_accessibility_clickable_spans:I = 0x7f091795

.field public static final tag_accessibility_heading:I = 0x7f091796

.field public static final tag_accessibility_pane_title:I = 0x7f091797

.field public static final tag_screen_reader_focusable:I = 0x7f09179f

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
    sget-object v0, Landroidx/core/R$id;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

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
