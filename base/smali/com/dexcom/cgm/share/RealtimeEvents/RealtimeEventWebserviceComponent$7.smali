.class Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$7;
.super Lcom/google/gson/reflect/TypeToken;
.source "RealtimeEventWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$7;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
