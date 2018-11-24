.class public Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;
.super Ljava/lang/Object;
.source "BulkDataGSONHolder.java"


# static fields
.field private static m_gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->m_gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGSON()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->m_gson:Lcom/google/gson/Gson;

    return-object v0
.end method
