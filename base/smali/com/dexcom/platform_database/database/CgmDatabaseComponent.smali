.class public Lcom/dexcom/platform_database/database/CgmDatabaseComponent;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "CgmDatabaseComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/e/f;


# static fields
.field public static final CURRENT_VERSION:I = 0x2

.field public static final DATABASE_NAME:Ljava/lang/String; = "database"

.field private static final EXPECTED_USER_ALERT_SETTINGS_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final UNINSTALLED_VERSION:I

.field private static final dbLock:Ljava/lang/Object;


# instance fields
.field private m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

.field private m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

.field private m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

.field private m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

.field private m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

.field private m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

.field private m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

.field private m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

.field private m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

.field private m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

.field private m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

.field private final m_isDebugMode:Z

.field private m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

.field private m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

.field private m_onAlertSettingsDataCorruptionError:Ljava/lang/Runnable;

.field private m_onFatalDataCorruptionError:Ljava/lang/Runnable;

.field private m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

.field private final m_targetVersion:I

.field private m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

.field private m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

.field private m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

.field private m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/platform_database/database/tables/BaseTable;",
            ">;"
        }
    .end annotation
.end field

.field private theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->dbLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;-><init>(Landroid/content/Context;ZZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 120
    const-string v0, "database"

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 92
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 93
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    .line 94
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    .line 95
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    .line 96
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    .line 97
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    .line 98
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    .line 99
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    .line 100
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

    .line 101
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    .line 102
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    .line 103
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    .line 104
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    .line 105
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    .line 106
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    .line 107
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

    .line 108
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    .line 109
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    .line 110
    iput-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    .line 122
    iput-boolean p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_isDebugMode:Z

    .line 123
    iput v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_targetVersion:I

    .line 125
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 127
    new-instance v0, Lcom/dexcom/platform_database/database/tables/EGVTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    .line 128
    new-instance v0, Lcom/dexcom/platform_database/database/tables/MeterTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/MeterTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    .line 129
    new-instance v0, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    .line 130
    new-instance v0, Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    .line 131
    new-instance v0, Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    .line 132
    new-instance v0, Lcom/dexcom/platform_database/database/tables/UserEventTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/UserEventTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    .line 133
    new-instance v0, Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    .line 134
    new-instance v0, Lcom/dexcom/platform_database/database/tables/FollowerTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/FollowerTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

    .line 135
    new-instance v0, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    .line 136
    new-instance v0, Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/DebugLogTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    .line 137
    new-instance v0, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    .line 138
    new-instance v0, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    .line 139
    new-instance v0, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    .line 140
    new-instance v0, Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    .line 141
    new-instance v0, Lcom/dexcom/platform_database/database/tables/DataPostTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/DataPostTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

    .line 142
    new-instance v0, Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/CrashLogTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    .line 143
    new-instance v0, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    .line 144
    new-instance v0, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    invoke-direct {v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;-><init>()V

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    .line 146
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v1, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/platform_database/database/tables/BaseTable;

    .line 183
    iget-object v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/dexcom/platform_database/database/tables/BaseTable;->setDatabase(Lnet/sqlcipher/database/SQLiteDatabase;)V

    goto :goto_1

    .line 169
    :cond_0
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 177
    :goto_2
    :try_start_3
    new-instance v2, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$DBInitFailException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$DBInitFailException;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/String;)V

    throw v2

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 186
    :cond_1
    return-void

    .line 171
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->tables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/EGVTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/KeyValueTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/FollowerTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/DebugLogTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/CommandQueueTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/DataPostTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/CrashLogTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/CalBoundsTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)Lcom/dexcom/platform_database/database/tables/BaseTable;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->getTable(Ljava/lang/Class;)Lcom/dexcom/platform_database/database/tables/BaseTable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/MeterTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/SensorSessionTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/UserAlertTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_onAlertSettingsDataCorruptionError:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertStateTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/UserEventTable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    return-object v0
.end method

.method private call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->logDatabaseException(Ljava/lang/RuntimeException;)V

    .line 353
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 356
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    :cond_0
    return-object p1
.end method

.method private doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private doInTransaction(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 289
    sget-object v1, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 294
    invoke-direct {p0, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 301
    :try_start_2
    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->logDatabaseException(Ljava/lang/RuntimeException;)V

    .line 303
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_onFatalDataCorruptionError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_onFatalDataCorruptionError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catch_1
    move-exception v0

    .line 312
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v0

    .line 323
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-static {p1}, Lcom/dexcom/b/a;->getDatabaseKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTable(Ljava/lang/Class;)Lcom/dexcom/platform_database/database/tables/BaseTable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1312
    const-class v0, Lcom/dexcom/cgm/model/Glucose;

    if-ne p1, v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    .line 1331
    :goto_0
    return-object v0

    .line 1314
    :cond_0
    const-class v0, Lcom/dexcom/cgm/model/Meter;

    if-ne p1, v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    goto :goto_0

    .line 1316
    :cond_1
    const-class v0, Lcom/dexcom/cgm/model/SensorSession;

    if-ne p1, v0, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    goto :goto_0

    .line 1318
    :cond_2
    const-class v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    if-ne p1, v0, :cond_3

    .line 1319
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    goto :goto_0

    .line 1320
    :cond_3
    const-class v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    if-ne p1, v0, :cond_4

    .line 1321
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    goto :goto_0

    .line 1322
    :cond_4
    const-class v0, Lcom/dexcom/cgm/model/UserEvent;

    if-ne p1, v0, :cond_5

    .line 1323
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    goto :goto_0

    .line 1324
    :cond_5
    const-class v0, Lcom/dexcom/cgm/model/TechSupportLogRecord;

    if-ne p1, v0, :cond_6

    .line 1325
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    goto :goto_0

    .line 1326
    :cond_6
    const-class v0, Lcom/dexcom/cgm/model/CgmCommand;

    if-ne p1, v0, :cond_7

    .line 1327
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    goto :goto_0

    .line 1328
    :cond_7
    const-class v0, Lcom/dexcom/cgm/model/CalBounds;

    if-ne p1, v0, :cond_8

    .line 1329
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    goto :goto_0

    .line 1330
    :cond_8
    const-class v0, Lcom/dexcom/cgm/model/DebugLogRecord;

    if-ne p1, v0, :cond_9

    .line 1331
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    goto :goto_0

    .line 1334
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error: class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not have a record_id field. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private logDatabaseException(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_isDebugMode:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Database exception occurred."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 368
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-DBException.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 372
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to write Database Exception to disk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public createBluetoothDeviceRecord(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
    .locals 1

    .prologue
    .line 1067
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$47;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$47;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1076
    return-void
.end method

.method public createBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$44;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$44;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1032
    return-void
.end method

.method public createCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$8;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$8;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/CalBounds;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public createCommandRecord(Lcom/dexcom/cgm/model/CgmCommand;)V
    .locals 1

    .prologue
    .line 943
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$38;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$38;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/CgmCommand;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 952
    return-void
.end method

.method public createCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V
    .locals 1

    .prologue
    .line 1166
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$53;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$53;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/CrashLog;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1175
    return-void
.end method

.method public createDataPost(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1125
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1134
    return-void
.end method

.method public createDebugLogRecord(Lcom/dexcom/cgm/model/DebugLogRecord;)V
    .locals 1

    .prologue
    .line 901
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$35;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$35;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/DebugLogRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 910
    return-void
.end method

.method public createEGVRecord(Lcom/dexcom/cgm/model/Glucose;)V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$2;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$2;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/Glucose;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public createEGVRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public createMeterRecord(Lcom/dexcom/cgm/model/Meter;)V
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$10;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$10;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/Meter;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 1

    .prologue
    .line 700
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 800
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 809
    return-void
.end method

.method public createOrUpdateTransmitterDetails(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
    .locals 1

    .prologue
    .line 1096
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$49;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1120
    return-void
.end method

.method public createSensorSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V
    .locals 1

    .prologue
    .line 552
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$13;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$13;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/SensorSession;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method public createTechSupportLogRecord(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
    .locals 1

    .prologue
    .line 859
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$32;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$32;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/TechSupportLogRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 868
    return-void
.end method

.method public createTransmitterInfoRecord(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 1

    .prologue
    .line 996
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/TransmitterInfo;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1005
    return-void
.end method

.method public createUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/UserEvent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 782
    return-void
.end method

.method public deleteAlertScheduleForTesting(I)V
    .locals 1

    .prologue
    .line 649
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$18;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$18;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 658
    return-void
.end method

.method public deleteBluetoothEventRecords(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 1053
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1062
    return-void
.end method

.method public deleteCrashLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 1194
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$55;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$55;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1203
    return-void
.end method

.method public deleteDataPost(J)V
    .locals 1

    .prologue
    .line 1152
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;J)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1161
    return-void
.end method

.method public deleteDebugLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 929
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$37;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$37;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 938
    return-void
.end method

.method public deleteTechSupportLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$34;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$34;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 896
    return-void
.end method

.method public deleteUserAlertRecord(I)V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    invoke-virtual {v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->deleteUserAlertRecordForTesting(I)V

    .line 728
    return-void
.end method

.method public deleteUserAlertRecordForTesting(I)V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$17;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$17;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method public eraseAndResetAlertSettings()V
    .locals 1

    .prologue
    .line 1295
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$61;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$61;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1305
    return-void
.end method

.method public eraseAndResetGlucose()V
    .locals 1

    .prologue
    .line 1281
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$60;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$60;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1290
    return-void
.end method

.method public eraseAndResetState()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_egvTable:Lcom/dexcom/platform_database/database/tables/EGVTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;->resetTable()V

    .line 261
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_meterTable:Lcom/dexcom/platform_database/database/tables/MeterTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/MeterTable;->resetTable()V

    .line 262
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_sensorSessionTable:Lcom/dexcom/platform_database/database/tables/SensorSessionTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;->resetTable()V

    .line 263
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userAlertTable:Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->resetTable()V

    .line 264
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_userEventTable:Lcom/dexcom/platform_database/database/tables/UserEventTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/UserEventTable;->resetTable()V

    .line 265
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_followerTable:Lcom/dexcom/platform_database/database/tables/FollowerTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/FollowerTable;->resetTable()V

    .line 266
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_techSupportLogTable:Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;->resetTable()V

    .line 267
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_debugLogTable:Lcom/dexcom/platform_database/database/tables/DebugLogTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/DebugLogTable;->resetTable()V

    .line 268
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_commandQueueTable:Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->resetTable()V

    .line 269
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_transmitterInfoTable:Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->resetTable()V

    .line 270
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothEventTable:Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->resetTable()V

    .line 271
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_bluetoothDeviceTable:Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/BluetoothDeviceTable;->resetTable()V

    .line 272
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertStateTable:Lcom/dexcom/platform_database/database/tables/AlertStateTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->resetTable()V

    .line 273
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_keyValueTable:Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;->resetTable()V

    .line 274
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_dataPostTable:Lcom/dexcom/platform_database/database/tables/DataPostTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->resetTable()V

    .line 275
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_calBoundsTable:Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->resetTable()V

    .line 276
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_crashLogTable:Lcom/dexcom/platform_database/database/tables/CrashLogTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/CrashLogTable;->resetTable()V

    .line 277
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_alertScheduleTable:Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->resetTable()V

    .line 278
    return-void
.end method

.method public getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public getLatestCommands(I)Ljava/util/List;
    .locals 1
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
    .line 983
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hasCompletedSensorWarmUpAtLeastOnce()Z
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$7;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$7;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 476
    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error null DB"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    iget v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_targetVersion:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error null DB"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;IILnet/sqlcipher/database/SQLiteDatabase;)V

    invoke-direct {p0, p1, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/DexAlertSchedule;

    return-object v0
.end method

.method public readAlertSchedules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 1

    .prologue
    .line 733
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$23;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$23;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/enums/AlertKind;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    return-object v0
.end method

.method public readAlertStateRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$24;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$24;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public varargs readBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "[",
            "Lcom/dexcom/cgm/model/enums/BluetoothEventType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$45;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$45;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$54;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$54;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readDataPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readDebugLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DebugLogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$36;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readEGVRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readFollowerRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$31;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$31;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readHighestRecordID(Ljava/lang/Class;)I
    .locals 1

    .prologue
    .line 1223
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$57;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$57;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1231
    if-nez v0, :cond_0

    .line 1232
    const/high16 v0, -0x80000000

    .line 1234
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public readKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 823
    if-nez v0, :cond_0

    .line 824
    const-string v0, ""

    .line 826
    :cond_0
    return-object v0
.end method

.method public readLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 1

    .prologue
    .line 1081
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$48;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$48;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    return-object v0
.end method

.method public readLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CalBounds;

    return-object v0
.end method

.method public readLatestEGVRecord()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    return-object v0
.end method

.method public readLatestMeterRecord()Lcom/dexcom/cgm/model/Meter;
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    return-object v0
.end method

.method public readLatestTransmitterInfoRecord()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 1010
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$43;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$43;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/TransmitterInfo;

    return-object v0
.end method

.method public readLowestRecordID(Ljava/lang/Class;)I
    .locals 1

    .prologue
    .line 1207
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1215
    if-nez v0, :cond_0

    .line 1216
    const/high16 v0, -0x80000000

    .line 1218
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public readMeterRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/p;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$12;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readPendingCalibrationCommands()Ljava/util/List;
    .locals 1
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
    .line 957
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$39;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$39;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readPendingStartStopCommands()Ljava/util/List;
    .locals 1
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
    .line 970
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$40;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$40;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readRecordsByID(Ljava/lang/Class;II)Ljava/util/List;
    .locals 1

    .prologue
    .line 1242
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;II)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readSensorSessionRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/SensorSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$14;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readTechSupportLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$33;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$33;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 582
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/enums/AlertKind;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public readUserAlertRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readUserEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/w;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$27;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$27;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/w;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->deNullifyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public realDatabaseCorruptionError()V
    .locals 1

    .prologue
    .line 1267
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;

    invoke-direct {v0, p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1276
    return-void
.end method

.method public setAlertSettingsDatabaseCorruptionHandler(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_onAlertSettingsDataCorruptionError:Ljava/lang/Runnable;

    .line 1262
    return-void
.end method

.method public setFatalDatabaseCorruptionHandler(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->m_onFatalDataCorruptionError:Ljava/lang/Runnable;

    .line 1256
    return-void
.end method

.method public setFollowers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$30;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$30;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 841
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->eraseAndResetState()V

    .line 254
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->theDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 255
    return-void
.end method

.method public updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V
    .locals 1

    .prologue
    .line 759
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$25;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$25;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/AlertStateRecord;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 768
    return-void
.end method

.method public updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 1

    .prologue
    .line 714
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$22;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$22;-><init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/UserAlertProperties;)V

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->doInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 723
    return-void
.end method
