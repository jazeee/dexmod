.class public final enum Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;
.super Ljava/lang/Enum;
.source "FollowerAlertSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

.field public static final enum High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

.field public static final enum Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

.field public static final enum NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;


# instance fields
.field m_sound:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    const-string v1, "UrgentLow"

    const-string v2, "UrgentLow.wav"

    invoke-direct {v0, v1, v3, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    .line 155
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    const-string v1, "Low"

    const-string v2, "Low.wav"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    .line 156
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    const-string v1, "High"

    const-string v2, "High.wav"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    .line 157
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    const-string v1, "NoData"

    const-string v2, "NoData.wav"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->m_sound:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    return-object v0
.end method


# virtual methods
.method public final getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->m_sound:Ljava/lang/String;

    return-object v0
.end method
