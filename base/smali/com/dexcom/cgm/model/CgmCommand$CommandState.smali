.class public final enum Lcom/dexcom/cgm/model/CgmCommand$CommandState;
.super Ljava/lang/Enum;
.source "CgmCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/CgmCommand$CommandState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandState;

.field public static final enum CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

.field public static final enum None:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

.field public static final enum Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

.field public static final enum PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

.field public static final enum SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->None:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    const-string v1, "CanceledByUser"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    const-string v1, "SentToTransmitter"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    const-string v1, "PrunedDueToTooManyBgs"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->None:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->$VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/CgmCommand$CommandState;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/CgmCommand$CommandState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->$VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/CgmCommand$CommandState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    return-object v0
.end method
