.class public final enum Lcom/dexcom/cgm/model/enums/SessionLogType;
.super Ljava/lang/Enum;
.source "SessionLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/SessionLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionJoinedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStaleStartCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStaleStopCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

.field public static final enum CGMSessionTableNone:Lcom/dexcom/cgm/model/enums/SessionLogType;


# instance fields
.field private m_sessionLogType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionTableNone"

    const-string v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionTableNone:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStartedOnDisplay"

    const-string v2, "SessionStartedOnTheDisplay"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStartedOnTxFromThisDisplay"

    const-string v2, "SessionStartedOnTransmitterFromThisDisplay"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionJoinedOnTx"

    const-string v2, "JoinedSessionOnTransmitter"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStoppedOnDisplay"

    const-string v2, "SessionStoppedOnTheDisplay"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStoppedOnTxFromThisDisplay"

    const/4 v2, 0x5

    const-string v3, "SessionStoppedOnTransmitterFromThisDisplay"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionAlreadyStoppedOnTx"

    const/4 v2, 0x6

    const-string v3, "SessionAlreadyStoppedOnTransmitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStaleStartCommand"

    const/4 v2, 0x7

    const-string v3, "StaleStartCommand"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStartCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 57
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStaleStopCommand"

    const/16 v2, 0x8

    const-string v3, "StaleStopCommand"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStopCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 62
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionNotMatchingForStop"

    const/16 v2, 0x9

    const-string v3, "NoMatchingSessionForStop"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 67
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStoppedDueToTransmitterError"

    const/16 v2, 0xa

    const-string v3, "SessionStoppedDueToTransmitterError"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 72
    new-instance v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    const-string v1, "CGMSessionStoppedDueToTransmitterEndOfLife"

    const/16 v2, 0xb

    const-string v3, "SessionStoppedDueToTransmitterEndOfLife"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SessionLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/SessionLogType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionTableNone:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStartCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStaleStopCommand:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/model/enums/SessionLogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->$VALUES:[Lcom/dexcom/cgm/model/enums/SessionLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/SessionLogType;->m_sessionLogType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lcom/dexcom/cgm/model/enums/SessionLogType;->values()[Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 90
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SessionLogType;->getSessionLogType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    :goto_1
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->$VALUES:[Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/SessionLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/SessionLogType;

    return-object v0
.end method


# virtual methods
.method public final getSessionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/SessionLogType;->m_sessionLogType:Ljava/lang/String;

    return-object v0
.end method
