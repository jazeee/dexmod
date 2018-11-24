.class public final enum Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;
.super Ljava/lang/Enum;
.source "DatabaseRecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum AlertSettings:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum AlertState:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum CommandQueue:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum DebugLog:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum Glucose:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum Meter:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum SensorSession:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum UserActivity:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

.field public static final enum UserEvent:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "Glucose"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->Glucose:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "Meter"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->Meter:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "SensorSession"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->SensorSession:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "UserEvent"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->UserEvent:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "AlertSettings"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->AlertSettings:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "AlertState"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->AlertState:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "UserActivity"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->UserActivity:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "CommandQueue"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->CommandQueue:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    const-string v1, "DebugLog"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->DebugLog:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->Glucose:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->Meter:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->SensorSession:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->UserEvent:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->AlertSettings:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->AlertState:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->UserActivity:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->CommandQueue:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->DebugLog:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    return-object v0
.end method
