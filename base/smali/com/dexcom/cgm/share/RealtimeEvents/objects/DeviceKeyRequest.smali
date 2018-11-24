.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;
.super Ljava/lang/Object;
.source "DeviceKeyRequest.java"


# instance fields
.field private final AppId:Ljava/util/UUID;

.field private final Key:Ljava/util/UUID;

.field private final KeyHmac:Ljava/lang/String;

.field private final Password:Ljava/lang/String;

.field private final RequestId:Ljava/util/UUID;

.field private final Timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->RequestId:Ljava/util/UUID;

    .line 27
    invoke-static {}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getCurrentLocalISO8601Date()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->Timestamp:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->Key:Ljava/util/UUID;

    .line 36
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->AppId:Ljava/util/UUID;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->calculateBase64URLHMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->KeyHmac:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;->Password:Ljava/lang/String;

    .line 40
    return-void
.end method
