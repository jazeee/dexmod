.class final Lcom/dexcom/cgm/activities/OrientationHelper$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# static fields
.field private static final ROTATIONAL_THRESHOLD:I = 0x2d


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private checkIfPointIsWithinThreshold(II)Z
    .locals 2

    .prologue
    .line 114
    add-int/lit8 v0, p2, -0x2d

    .line 115
    add-int/lit8 v1, p2, 0x2d

    .line 116
    if-le p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrientationFromDegrees(I)Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 84
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Flat:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->isUpsideDownPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->UpsideDownPortrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->isLeftLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->LeftLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->isRightLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->RightLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    goto :goto_0

    .line 92
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    goto :goto_0
.end method

.method private isLeftLandscape(I)Z
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x5a

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->checkIfPointIsWithinThreshold(II)Z

    move-result v0

    return v0
.end method

.method private isRightLandscape(I)Z
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x10e

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->checkIfPointIsWithinThreshold(II)Z

    move-result v0

    return v0
.end method

.method private isUpsideDownPortrait(I)Z
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0xb4

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->checkIfPointIsWithinThreshold(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/OrientationHelper$1;->getOrientationFromDegrees(I)Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/dexcom/cgm/activities/OrientationHelper;->access$000()Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 76
    invoke-static {v0}, Lcom/dexcom/cgm/activities/OrientationHelper;->access$002(Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;)Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 77
    invoke-static {}, Lcom/dexcom/cgm/activities/OrientationHelper;->access$100()V

    .line 79
    :cond_0
    return-void
.end method
