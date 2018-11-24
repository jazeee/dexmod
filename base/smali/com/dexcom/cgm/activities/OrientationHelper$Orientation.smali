.class public final enum Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
.super Ljava/lang/Enum;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field public static final enum Flat:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field public static final enum LeftLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field public static final enum Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field public static final enum RightLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field public static final enum UpsideDownPortrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    const-string v1, "Flat"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Flat:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    const-string v1, "UpsideDownPortrait"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->UpsideDownPortrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    const-string v1, "LeftLandscape"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->LeftLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    const-string v1, "RightLandscape"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->RightLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    sget-object v1, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Flat:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->UpsideDownPortrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->LeftLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->RightLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->$VALUES:[Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->$VALUES:[Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-object v0
.end method


# virtual methods
.method public final isLandscape()Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->LeftLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->RightLandscape:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPortrait()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->UpsideDownPortrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
