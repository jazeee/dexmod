.class public Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;
.super Ljava/lang/Object;
.source "BluetoothEventIncompatibleTransmitter.java"


# instance fields
.field private final m_address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private final m_compatibilityCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "compatibilityCode"
    .end annotation
.end field

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transmitterId"
    .end annotation
.end field

.field private final m_transmitterName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transmitterName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 34
    iput-object p2, p0, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;->m_transmitterName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;->m_address:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;->m_compatibilityCode:I

    .line 37
    return-void
.end method
