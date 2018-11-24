.class public Lcom/dexcom/cgm/model/GsonFactory;
.super Ljava/lang/Object;
.source "GsonFactory.java"


# static fields
.field private static final m_gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/dexcom/cgm/model/TransmitterId;

    new-instance v2, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;-><init>(Lcom/dexcom/cgm/model/GsonFactory$1;)V

    .line 23
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GsonFactory$TransmitterIdAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/model/GsonFactory;->m_gson:Lcom/google/gson/Gson;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dexcom/cgm/model/GsonFactory;->m_gson:Lcom/google/gson/Gson;

    return-object v0
.end method
