.class public final enum Lcom/dexcom/cgm/model/enums/FollowerState;
.super Ljava/lang/Enum;
.source "FollowerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/FollowerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum AbandonedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum Active:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum CanceledByBoth:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum CanceledByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum CanceledBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum Created:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum InviteExpired:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum InviteFailed:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum InviteRejected:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum InviteWaiting:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum PausedByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum PausedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

.field public static final enum Unknown:Lcom/dexcom/cgm/model/enums/FollowerState;


# instance fields
.field private m_stateNumber:I


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
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->Unknown:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "Created"

    invoke-direct {v0, v1, v5, v5}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->Created:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "InviteWaiting"

    invoke-direct {v0, v1, v6, v6}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteWaiting:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "InviteFailed"

    invoke-direct {v0, v1, v7, v7}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteFailed:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "InviteRejected"

    invoke-direct {v0, v1, v8, v8}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteRejected:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "InviteExpired"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteExpired:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "Active"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "PausedByPublisher"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "PausedBySubscriber"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "CanceledByPublisher"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "CanceledBySubscriber"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "CanceledByBoth"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledByBoth:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    const-string v1, "AbandonedBySubscriber"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/FollowerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->AbandonedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 9
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/FollowerState;

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->Unknown:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->Created:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteWaiting:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteFailed:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteRejected:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->InviteExpired:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->CanceledByBoth:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->AbandonedBySubscriber:Lcom/dexcom/cgm/model/enums/FollowerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->$VALUES:[Lcom/dexcom/cgm/model/enums/FollowerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/dexcom/cgm/model/enums/FollowerState;->m_stateNumber:I

    .line 30
    return-void
.end method

.method public static fromStateNumber(I)Lcom/dexcom/cgm/model/enums/FollowerState;
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/dexcom/cgm/model/enums/FollowerState;->values()[Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 44
    invoke-direct {v0}, Lcom/dexcom/cgm/model/enums/FollowerState;->getStateNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 48
    :goto_1
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getStateNumber()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dexcom/cgm/model/enums/FollowerState;->m_stateNumber:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/FollowerState;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/FollowerState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/FollowerState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/FollowerState;->$VALUES:[Lcom/dexcom/cgm/model/enums/FollowerState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/FollowerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/FollowerState;

    return-object v0
.end method
