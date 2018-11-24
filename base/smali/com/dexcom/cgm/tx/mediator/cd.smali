.class public final Lcom/dexcom/cgm/tx/mediator/cd;
.super Ljava/lang/Object;
.source "TxUuid.java"


# static fields
.field public static final AuthenticationControlPointCharUuid:Ljava/util/UUID;

.field public static final CgmControlPointCharUuid:Ljava/util/UUID;

.field public static final DexcomAdvertisedUuid:Ljava/util/UUID;

.field public static final DexcomCgmServiceUuid:Ljava/util/UUID;

.field private static final DexcomTestServiceUuid:Ljava/util/UUID;

.field public static final ExchangeCharUuid:Ljava/util/UUID;

.field public static final SynchronizationCharUuid:Ljava/util/UUID;

.field private static final m_names:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-string v0, "0000febc-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomAdvertisedUuid:Ljava/util/UUID;

    .line 19
    const-string v0, "f8083532-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomCgmServiceUuid:Ljava/util/UUID;

    .line 21
    const-string v0, "f8084532-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomTestServiceUuid:Ljava/util/UUID;

    .line 25
    const-string v0, "f8083533-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->SynchronizationCharUuid:Ljava/util/UUID;

    .line 27
    const-string v0, "f8083534-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->CgmControlPointCharUuid:Ljava/util/UUID;

    .line 29
    const-string v0, "f8083535-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->AuthenticationControlPointCharUuid:Ljava/util/UUID;

    .line 31
    const-string v0, "f8083536-849e-531c-c594-30f1f86a4ea5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->ExchangeCharUuid:Ljava/util/UUID;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    sput-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomAdvertisedUuid:Ljava/util/UUID;

    const-string v2, "Dexcom SIG Service"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomCgmServiceUuid:Ljava/util/UUID;

    const-string v2, "Dexcom CGM Service"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomTestServiceUuid:Ljava/util/UUID;

    const-string v2, "Dexcom Test Service"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->SynchronizationCharUuid:Ljava/util/UUID;

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->CgmControlPointCharUuid:Ljava/util/UUID;

    const-string v2, "CGM_CP"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->AuthenticationControlPointCharUuid:Ljava/util/UUID;

    const-string v2, "Auth_CP"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->ExchangeCharUuid:Ljava/util/UUID;

    const-string v2, "Exchange"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getName(Ljava/util/UUID;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->m_names:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
