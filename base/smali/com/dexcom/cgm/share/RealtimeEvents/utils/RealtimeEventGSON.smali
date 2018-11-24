.class public Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventGSON;
.super Ljava/lang/Object;
.source "RealtimeEventGSON.java"


# static fields
.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventGSON;->gson:Lcom/google/gson/Gson;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventGSON;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
