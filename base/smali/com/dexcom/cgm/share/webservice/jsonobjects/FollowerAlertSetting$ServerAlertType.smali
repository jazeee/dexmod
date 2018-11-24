.class public final enum Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;
.super Ljava/lang/Enum;
.source "FollowerAlertSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

.field public static final enum High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

.field public static final enum Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

.field public static final enum NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;


# instance fields
.field private m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 133
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    const-string v1, "UrgentLow"

    invoke-direct {v0, v1, v5, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    .line 134
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    const-string v1, "Low"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    .line 135
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    const-string v1, "High"

    invoke-direct {v0, v1, v3, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    .line 136
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    const-string v1, "NoData"

    invoke-direct {v0, v1, v4, v6}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    .line 130
    new-array v0, v6, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->m_type:I

    .line 143
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->m_type:I

    return v0
.end method
