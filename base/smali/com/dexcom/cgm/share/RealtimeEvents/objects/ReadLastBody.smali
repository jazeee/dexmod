.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;
.super Ljava/lang/Object;
.source "ReadLastBody.java"


# instance fields
.field private final EventTypes:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No EventTypes were given!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    const-string v0, ""

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 26
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_2
    iput-object v2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;->EventTypes:Ljava/lang/String;

    .line 32
    return-void
.end method
