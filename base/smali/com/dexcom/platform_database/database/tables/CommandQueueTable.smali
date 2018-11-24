.class public Lcom/dexcom/platform_database/database/tables/CommandQueueTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "CommandQueueTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/g;


# instance fields
.field private final COMMAND_STATE_COLUMN:Ljava/lang/String;

.field private final COMMAND_TYPE_COLUMN:Ljava/lang/String;

.field private final SYSTEM_TIME_STAMP_COLUMN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/dexcom/cgm/model/CgmCommand;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 30
    const-string v0, "command_type"

    iput-object v0, p0, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->COMMAND_TYPE_COLUMN:Ljava/lang/String;

    .line 31
    const-string v0, "command_state"

    iput-object v0, p0, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->COMMAND_STATE_COLUMN:Ljava/lang/String;

    .line 32
    const-string v0, "system_time_stamp"

    iput-object v0, p0, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->SYSTEM_TIME_STAMP_COLUMN:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createCommandRecord(Lcom/dexcom/cgm/model/CgmCommand;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 28
    return-void
.end method

.method public getLatestCommands(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "record_id DESC"

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public readPendingCalibrationCommands()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "(command_type = ? AND command_state = ?)"

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 39
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41
    const-string v2, "system_time_stamp"

    invoke-virtual {p0, v0, v1, v2}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public readPendingStartStopCommands()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "(command_type = ? OR command_type = ?) AND command_state = ?"

    .line 50
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 52
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    const-string v2, "system_time_stamp"

    invoke-virtual {p0, v0, v1, v2}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    return-object v0
.end method
