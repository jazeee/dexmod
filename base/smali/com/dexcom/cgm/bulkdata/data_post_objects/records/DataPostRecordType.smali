.class public final enum Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;
.super Ljava/lang/Enum;
.source "DataPostRecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum AlertSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum CrashLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum DeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum ErrorLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum GlucoseRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum MeterRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum SensorSessionRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum UserActivityRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

.field public static final enum UserEventRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "GlucoseRecord"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->GlucoseRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "MeterRecord"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->MeterRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "SensorSessionRecord"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->SensorSessionRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "AlertSettingsRecord"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->AlertSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "UserEventRecord"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserEventRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "DeviceSettingsRecord"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->DeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "UserActivityRecord"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserActivityRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "ErrorLogRecord"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->ErrorLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const-string v1, "CrashLogRecord"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->CrashLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->GlucoseRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->MeterRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->SensorSessionRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->AlertSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserEventRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->DeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserActivityRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->ErrorLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->CrashLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->$VALUES:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

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

.method public static getPrivateDataTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const/4 v1, 0x0

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserActivityRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->ErrorLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->CrashLogRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicDataTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    const/4 v1, 0x0

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->GlucoseRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->MeterRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->SensorSessionRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->AlertSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->UserEventRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->DeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->$VALUES:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    return-object v0
.end method


# virtual methods
.method public final isPublicDataRecord()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->getPublicDataTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
