.class public Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;
.super Ljava/lang/Object;
.source "ReadLastDataPostBody.java"


# instance fields
.field private sessionId:Ljava/util/UUID;

.field private streamTypeFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Phone2"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;->streamTypeFilter:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;->sessionId:Ljava/util/UUID;

    .line 23
    return-void
.end method
