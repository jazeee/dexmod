.class final enum Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;
.super Ljava/lang/Enum;
.source "BitmapLeaser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

.field public static final enum ONE_ARROW:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

.field public static final enum TWO_ARROWS:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    const-string v1, "ONE_ARROW"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->ONE_ARROW:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    const-string v1, "TWO_ARROWS"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->TWO_ARROWS:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    sget-object v1, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->ONE_ARROW:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->TWO_ARROWS:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->$VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->$VALUES:[Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    return-object v0
.end method
