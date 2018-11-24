.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;
.super Ljava/lang/Object;
.source "RealtimeEventResponseContainer.java"


# instance fields
.field private Content:Ljava/lang/String;

.field private Hmac:Ljava/lang/String;

.field private IsZip:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getContent(Ljava/util/UUID;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Content:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->calculateBase64HMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Hmac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "We got corrupted data from the server?! The content was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", the server\'s HMAC was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Hmac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and our HMAC is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->IsZip:Z

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->unGZIP([B)[B

    move-result-object v1

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->Content:Ljava/lang/String;

    goto :goto_0
.end method
