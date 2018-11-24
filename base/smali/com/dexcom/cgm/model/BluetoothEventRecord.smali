.class public Lcom/dexcom/cgm/model/BluetoothEventRecord;
.super Ljava/lang/Object;
.source "BluetoothEventRecord.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "bluetooth_event_type"

.field public static final SYSTEM_TIME_STAMP:Ljava/lang/String; = "record_system_time"


# instance fields
.field private m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "bluetooth_event_type"
    .end annotation
.end field

.field private m_glucoseTime:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "glucose_tx_time"
    .end annotation
.end field

.field private m_payloadLong:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "payloadLong"
    .end annotation
.end field

.field private m_payloadString:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "payloadString"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Long;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordRtcTime:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_rtc_time"
    .end annotation
.end field

.field private m_recordSystemTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_system_time"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/k/j;JLcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    .line 56
    iput-wide p2, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_recordRtcTime:J

    .line 57
    iput-object p4, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_glucoseTime:Lcom/dexcom/cgm/k/n;

    .line 58
    iput-object p5, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 59
    iput-object p6, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_payloadString:Ljava/lang/String;

    .line 60
    iput-wide p7, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_payloadLong:J

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/k/j;JLcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/String;JLcom/dexcom/cgm/model/BluetoothEventRecord$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p8}, Lcom/dexcom/cgm/model/BluetoothEventRecord;-><init>(Lcom/dexcom/cgm/k/j;JLcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getBluetoothEventType()Lcom/dexcom/cgm/model/enums/BluetoothEventType;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    return-object v0
.end method

.method public getPayloadLong()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_payloadLong:J

    return-wide v0
.end method

.method public getPayloadString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_payloadString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method
