.class Landroid/support/wearable/view/CardFrame$EdgeFade;
.super Ljava/lang/Object;
.source "CardFrame.java"


# instance fields
.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private final shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;

    .line 548
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;

    .line 549
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;

    .line 550
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 551
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 552
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;

    return-object v0
.end method
