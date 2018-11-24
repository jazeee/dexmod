.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataManifest.java"


# instance fields
.field private Entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;",
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
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;->Entries:Ljava/util/List;

    .line 26
    return-void
.end method
