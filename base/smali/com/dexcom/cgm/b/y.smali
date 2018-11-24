.class final enum Lcom/dexcom/cgm/b/y;
.super Ljava/lang/Enum;
.source "SensorSessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/b/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/b/y;

.field public static final enum None:Lcom/dexcom/cgm/b/y;

.field public static final enum NotTrackingASession:Lcom/dexcom/cgm/b/y;

.field public static final enum SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

.field public static final enum SessionStoppedOnDisplay:Lcom/dexcom/cgm/b/y;

.field public static final enum TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/dexcom/cgm/b/y;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/b/y;->None:Lcom/dexcom/cgm/b/y;

    .line 169
    new-instance v0, Lcom/dexcom/cgm/b/y;

    const-string v1, "SessionStartedOnDisplay"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    .line 170
    new-instance v0, Lcom/dexcom/cgm/b/y;

    const-string v1, "TrackingSessionOnTransmitter"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    .line 171
    new-instance v0, Lcom/dexcom/cgm/b/y;

    const-string v1, "SessionStoppedOnDisplay"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/b/y;->SessionStoppedOnDisplay:Lcom/dexcom/cgm/b/y;

    .line 172
    new-instance v0, Lcom/dexcom/cgm/b/y;

    const-string v1, "NotTrackingASession"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    .line 166
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/b/y;

    sget-object v1, Lcom/dexcom/cgm/b/y;->None:Lcom/dexcom/cgm/b/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/b/y;->SessionStoppedOnDisplay:Lcom/dexcom/cgm/b/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/b/y;->$VALUES:[Lcom/dexcom/cgm/b/y;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/b/y;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/dexcom/cgm/b/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/b/y;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/b/y;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/dexcom/cgm/b/y;->$VALUES:[Lcom/dexcom/cgm/b/y;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/b/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/b/y;

    return-object v0
.end method
