.class Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "GsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/dexcom/cgm/model/TransmitterId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/GsonFactory$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/dexcom/cgm/model/TransmitterId;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 38
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {p0, p1, p2}, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/dexcom/cgm/model/TransmitterId;)V

    return-void
.end method
