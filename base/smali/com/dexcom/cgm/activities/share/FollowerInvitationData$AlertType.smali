.class public final enum Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;
.super Ljava/lang/Enum;
.source "FollowerInvitationData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

.field public static final enum High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

.field public static final enum Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

.field public static final enum NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    const-string v1, "UrgentLow"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    .line 83
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    const-string v1, "Low"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    .line 84
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    const-string v1, "High"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    .line 85
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    const-string v1, "NoData"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    sget-object v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->$VALUES:[Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->$VALUES:[Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    return-object v0
.end method
