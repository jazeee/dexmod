.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;
.super Ljava/lang/Object;
.source "SignedRequestHeader.java"


# instance fields
.field private final AccId:Ljava/util/UUID;

.field private final AppId:Ljava/util/UUID;

.field private final EncKey:Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;

.field private final IsZip:Z

.field private final Timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getCurrentLocalISO8601Date()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->Timestamp:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->AccId:Ljava/util/UUID;

    .line 34
    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->AppId:Ljava/util/UUID;

    .line 35
    iput-boolean p3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->IsZip:Z

    .line 36
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;

    invoke-direct {v0, p4, p5, p6}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->EncKey:Lcom/dexcom/cgm/share/RealtimeEvents/objects/EncryptionKey;

    .line 37
    return-void
.end method


# virtual methods
.method public getPatientID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;->AccId:Ljava/util/UUID;

    return-object v0
.end method
