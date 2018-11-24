.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;
.super Ljava/lang/Object;
.source "CgmDatabaseComponent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

.field final synthetic val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    iput-object p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    .line 1102
    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->readLatestTransmitterInfoRecord()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logTxStaticInfo(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->createTransmitterInfoRecord(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 1109
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    .line 1110
    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;->readLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->contentEquals(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;->createBluetoothDeviceRecord(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    .line 1115
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;->val$transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logTxRuntimeInfo(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Ljava/lang/String;)V

    .line 1117
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
