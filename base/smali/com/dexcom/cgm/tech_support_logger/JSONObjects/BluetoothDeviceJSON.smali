.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "BluetoothDeviceJSON.java"


# instance fields
.field private address:Ljava/lang/String;

.field private appAuthKeyTimestamp:Ljava/lang/String;

.field private appAuthPrimaryKey:Ljava/lang/String;

.field private appAuthSecondaryKey:Ljava/lang/String;

.field private operatingIntervalMs:Ljava/lang/Long;

.field private txId:Ljava/lang/String;

.field private txVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->txId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->address:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getOperatingIntervalMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->operatingIntervalMs:Ljava/lang/Long;

    .line 28
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->appAuthPrimaryKey:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->appAuthSecondaryKey:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->appAuthKeyTimestamp:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;->txVersion:Ljava/lang/String;

    .line 33
    return-void
.end method
