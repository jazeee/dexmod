.class final enum Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;
.super Ljava/lang/Enum;
.source "BitmapLeaser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

.field public static final enum HAS_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

.field public static final enum NO_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    const-string v1, "NO_TIP"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->NO_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    const-string v1, "HAS_TIP"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->HAS_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    sget-object v1, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->NO_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->HAS_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->$VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->$VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    return-object v0
.end method
