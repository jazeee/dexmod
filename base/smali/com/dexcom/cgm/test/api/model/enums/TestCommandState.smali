.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;
.super Ljava/lang/Enum;
.source "TestCommandState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

.field public static final enum CanceledByUser:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

.field public static final enum Pending:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

.field public static final enum PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

.field public static final enum SentToTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->Pending:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    const-string v1, "CanceledByUser"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->CanceledByUser:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    const-string v1, "SentToTransmitter"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->SentToTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    const-string v1, "PrunedDueToTooManyBgs"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->Pending:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->CanceledByUser:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->SentToTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    return-object v0
.end method
