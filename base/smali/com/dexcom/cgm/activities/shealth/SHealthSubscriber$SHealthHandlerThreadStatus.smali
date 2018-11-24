.class final enum Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;
.super Ljava/lang/Enum;
.source "SHealthSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

.field public static final enum BUSY:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

.field public static final enum FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->BUSY:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    sget-object v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->FREE:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->BUSY:Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->$VALUES:[Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->$VALUES:[Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber$SHealthHandlerThreadStatus;

    return-object v0
.end method
