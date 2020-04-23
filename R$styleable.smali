.class public final Landroidx/core/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static synthetic $ic:Lcom/baidu/titan/sdk/runtime/Interceptable; = null

.field public static final ColorStateListItem:[I = null

.field public static final ColorStateListItem_alpha:I = 0x2

.field public static final ColorStateListItem_android_alpha:I = 0x1

.field public static final ColorStateListItem_android_color:I = 0x0

.field public static final FontFamily:[I = null

.field public static final FontFamilyFont:[I = null

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final GradientColor:[I = null

.field public static final GradientColorItem:[I = null

.field public static final GradientColorItem_android_color:I = 0x0

.field public static final GradientColorItem_android_offset:I = 0x1

.field public static final GradientColor_android_centerColor:I = 0x7

.field public static final GradientColor_android_centerX:I = 0x3

.field public static final GradientColor_android_centerY:I = 0x4

.field public static final GradientColor_android_endColor:I = 0x1

.field public static final GradientColor_android_endX:I = 0xa

.field public static final GradientColor_android_endY:I = 0xb

.field public static final GradientColor_android_gradientRadius:I = 0x5

.field public static final GradientColor_android_startColor:I = 0x0

.field public static final GradientColor_android_startX:I = 0x8

.field public static final GradientColor_android_startY:I = 0x9

.field public static final GradientColor_android_tileMode:I = 0x6

.field public static final GradientColor_android_type:I = 0x2

.field public static hf_hotfixPatch:Lcom/netdisk/hotfix/base/IPatchInfo;


# instance fields
.field public transient synthetic $fh:Lcom/baidu/titan/sdk/runtime/FieldHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .prologue
    sget-object v0, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptorStorage;->$ic:Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 184
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/core/R$styleable;->ColorStateListItem:[I

    const/4 v0, 0x6

    .line 188
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/core/R$styleable;->FontFamily:[I

    const/16 v0, 0xa

    .line 195
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/core/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xc

    .line 206
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/core/R$styleable;->GradientColor:[I

    const/4 v0, 0x2

    .line 219
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroidx/core/R$styleable;->GradientColorItem:[I

    return-void

    :cond_1
    const v1, -0x2eda9c48

    const-string v2, "Landroidx/core/R$styleable;"

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokeClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->interceptor:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-eqz v3, :cond_2

    sput-object v3, Landroidx/core/R$styleable;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    :cond_2
    iget v5, v4, Lcom/baidu/titan/sdk/runtime/InterceptResult;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/baidu/titan/sdk/runtime/ClassClinitInterceptable;->invokePostClinit(ILjava/lang/String;)Lcom/baidu/titan/sdk/runtime/InterceptResult;

    return-void

    .line 184
    :array_0
    .array-data 0x4
        0xa5t 0x1t 0x1t 0x1t
        0x1ft 0x3t 0x1t 0x1t
        0x36t 0x0t 0x4t 0x7ft
    .end array-data

    .line 188
    :array_1
    .array-data 0x4
        0x6bt 0x1t 0x4t 0x7ft
        0x6ct 0x1t 0x4t 0x7ft
        0x6dt 0x1t 0x4t 0x7ft
        0x6et 0x1t 0x4t 0x7ft
        0x6ft 0x1t 0x4t 0x7ft
        0x70t 0x1t 0x4t 0x7ft
    .end array-data

    .line 195
    :array_2
    .array-data 0x4
        0x32t 0x5t 0x1t 0x1t
        0x33t 0x5t 0x1t 0x1t
        0x3ft 0x5t 0x1t 0x1t
        0x6ft 0x5t 0x1t 0x1t
        0x70t 0x5t 0x1t 0x1t
        0x69t 0x1t 0x4t 0x7ft
        0x71t 0x1t 0x4t 0x7ft
        0x72t 0x1t 0x4t 0x7ft
        0x73t 0x1t 0x4t 0x7ft
        0x2at 0x4t 0x4t 0x7ft
    .end array-data

    .line 206
    :array_3
    .array-data 0x4
        0x9dt 0x1t 0x1t 0x1t
        0x9et 0x1t 0x1t 0x1t
        0xa1t 0x1t 0x1t 0x1t
        0xa2t 0x1t 0x1t 0x1t
        0xa3t 0x1t 0x1t 0x1t
        0xa4t 0x1t 0x1t 0x1t
        0x1t 0x2t 0x1t 0x1t
        0xbt 0x2t 0x1t 0x1t
        0x10t 0x5t 0x1t 0x1t
        0x11t 0x5t 0x1t 0x1t
        0x12t 0x5t 0x1t 0x1t
        0x13t 0x5t 0x1t 0x1t
    .end array-data

    .line 219
    :array_4
    .array-data 0x4
        0xa5t 0x1t 0x1t 0x1t
        0x14t 0x5t 0x1t 0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    sget-object v0, Landroidx/core/R$styleable;->$ic:Lcom/baidu/titan/sdk/runtime/Interceptable;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/titan/sdk/runtime/TitanRuntime;->newInitContext()Lcom/baidu/titan/sdk/runtime/InitContext;

    move-result-object v1

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
