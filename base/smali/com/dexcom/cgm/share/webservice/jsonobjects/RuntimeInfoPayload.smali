.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;
.super Ljava/lang/Object;
.source "RuntimeInfoPayload.java"


# instance fields
.field private runtimeInfo:Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;

.field private sessionId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;->sessionId:Ljava/util/UUID;

    .line 15
    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;->runtimeInfo:Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;

    .line 16
    return-void
.end method
