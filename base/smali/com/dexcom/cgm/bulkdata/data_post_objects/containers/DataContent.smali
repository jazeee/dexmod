.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataContent.java"


# instance fields
.field private Entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;->Entries:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;->Entries:Ljava/util/List;

    return-object v0
.end method
