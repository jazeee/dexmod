.class public Lcom/dexcom/cgm/activities/DPPXConverter;
.super Ljava/lang/Object;
.source "DPPXConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPXFromDP(D)I
    .locals 2

    .prologue
    .line 22
    double-to-float v0, p0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(F)I

    move-result v0

    return v0
.end method

.method public static getPXFromDP(F)I
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getPXFromDP(I)I
    .locals 1

    .prologue
    .line 17
    int-to-float v0, p0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(F)I

    move-result v0

    return v0
.end method
