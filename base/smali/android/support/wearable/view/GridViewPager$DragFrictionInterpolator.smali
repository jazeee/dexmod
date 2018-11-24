.class final Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;
.super Ljava/lang/Object;
.source "GridViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEFAULT_FALLOFF:F = 4.0f


# instance fields
.field private final falloffRate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2299
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;-><init>(F)V

    .line 2300
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 2302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    iput p1, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    .line 2304
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2309
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 2310
    sub-double v2, v0, v4

    add-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
