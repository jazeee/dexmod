.class public Lcom/dexcom/cgm/model/BluetoothEventScan;
.super Ljava/lang/Object;
.source "BluetoothEventScan.java"


# instance fields
.field private final m_deviceAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventScan;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 17
    iput-object p2, p0, Lcom/dexcom/cgm/model/BluetoothEventScan;->m_deviceAddress:Ljava/lang/String;

    .line 18
    return-void
.end method
