.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;
.super Ljava/lang/Object;
.source "PostEGVRecordsBody.java"


# instance fields
.field public Egvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
            ">;"
        }
    .end annotation
.end field

.field public SN:Ljava/lang/String;

.field private TA:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;->TA:I

    return-void
.end method
